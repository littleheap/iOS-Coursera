//
//  ViewController.m
//  SDWebImage
//
//  Created by LittleHeap on 2017/6/1.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "UIImageView+WebCache.h"
#import "Model.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"加载网络视图";
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    [self.view addSubview:_tableView];
    
    _arrayData = [[NSMutableArray alloc] init];
    
    _btnLoadData = [[UIBarButtonItem alloc] initWithTitle:@"Load" style:UIBarButtonItemStylePlain target:self action:@selector(pressLoad)];
    
    self.navigationItem.rightBarButtonItem = _btnLoadData;
    
}

-(void) pressLoad{
    
    [self loadData];

}

//下载数据
-(void) loadData{
    
    //获得AFHTTPSession对象
    AFHTTPSessionManager* session = [AFHTTPSessionManager manager];
    
    NSArray* arrGroup = [NSArray arrayWithObjects:@"iOS",@"Android",@"C++", nil];
    
    static int counter = 0;
    
    NSString* path = [NSString stringWithFormat:@"https://api.douban.com/book/subjects?q=%@&alt=json",arrGroup[counter]];
    
    counter++;
    
    if(counter >= 3){
        counter = 0;
    }
    
    //下载网络数据
    [session GET:path parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject){
        NSLog(@"Succeed");
        
        if([responseObject isKindOfClass:[NSDictionary class]]){
            NSLog(@"%@",responseObject);
            
            //解析数据
            [self parseData:responseObject];
        }
    }failure:^(NSURLSessionDataTask * _Nonnull task, NSError* _Nonnull error){
        NSLog(@"Fail");
    }];
}

//解析数据
-(void) parseData:(NSDictionary*) dic{
    
    NSArray* arrEntry = [dic objectForKey:@"entry"];
    
    for(NSDictionary* dicBook in arrEntry){
        
        Model* book = [[Model alloc] init];
        
        //名称
        NSDictionary* dicTitle = [dicBook objectForKey:@"title"];
        
        NSString* strTitle = [dicTitle objectForKey:@"$t"];
        
        book.name = strTitle;
        
        //图片地址
        NSArray* arrLink = [dicBook objectForKey:@"link"];
        
        for(NSDictionary* dicLink in arrLink){
            
            NSString* value = [dicLink objectForKey:@"@rel"];
            
            if([value isEqualToString:@"image"]){
                book.imageUrl = [dicLink objectForKey:@"@href"];
            }
        }
        
        //作者
        NSArray* dicAuthor = [dicBook objectForKey:@"author"];
        
        NSDictionary* arrAuthor = [dicAuthor objectAtIndex:0];
        
        NSString* strAuthor = [[arrAuthor objectForKey:@"name"] objectForKey:@"$t"];
        
        book.author = strAuthor;
        
        //将一本书对象添加到数据集中
        [_arrayData addObject:book];
    }
    
    [_tableView reloadData];
}

//组数
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _arrayData.count;
}

//数据项
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString* strID = @"ID";
    
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:strID];
    
    if(cell == nil){
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:strID];
    }
    
    Model* model = _arrayData[indexPath.row];
    
    cell.textLabel.text = model.name;
    
    cell.detailTextLabel.text = model.author;
    
    //使用WebImage加载网络图片
    [cell.imageView sd_setImageWithURL:[NSURL URLWithString:model.imageUrl]];
    
    //缓存模式
    SDWebImageManager* mgr = [SDWebImageManager sharedManager];
    
    return cell;
}

//数据项高度
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
