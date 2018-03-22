//
//  ViewController.m
//  XML
//
//  Created by LittleHeap on 2017/5/26.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"
#import "GDataXMLNode.h"
#import "UserInfo.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _tableview = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    _tableview.delegate = self;
    _tableview.dataSource = self;
    
    [self.view addSubview:_tableview];
    
    _arraydata = [[NSMutableArray alloc] init];
    
    [self parseXML];
    
}
    
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return _arraydata.count;
}

-(void) parseXML{
    
    //获取文件路径
    NSString* path = [[NSBundle mainBundle] pathForResource:@"demo" ofType:@"txt"];
    
    //将XML文件读入内存
    NSData* dataXML = [NSData dataWithContentsOfFile:path];
    
    //创建XML文档对象
    NSError* error = nil;
    GDataXMLDocument* docXML = [[GDataXMLDocument alloc] initWithData:dataXML options:0 error:&error];
    
    NSLog(@"error = %@",error);
    
    //获取根节点元素对象
    GDataXMLElement* elemRoot = [docXML rootElement];
    
    //搜索根节点下所有count对象
    NSArray* arrCount = [elemRoot elementsForName:@"count"];
    
    GDataXMLElement* elemCount = [arrCount objectAtIndex:0];
    
    NSString* strCount = [elemCount stringValue];
    
    NSLog(@"count = %@",strCount);
    
    //打印菜单内容
    NSArray* arrBreakfast = [elemRoot elementsForName:@"breakfast_menu"];
    
    GDataXMLElement* elemFood = [arrBreakfast firstObject];
    
    NSArray* arrFood = [elemFood elementsForName:@"food"];
    
    for(int i = 0 ; i < arrFood.count ; i++){
        
        GDataXMLElement* element = arrFood[i];
        
        NSArray* arrName = [element elementsForName:@"name"];
        
        GDataXMLElement* name = [arrName objectAtIndex:0];
        
        NSString* strName = [name stringValue];
        
        UserInfo* meal = [[UserInfo alloc] init];
        
        meal.mFoodname = strName;
        
        NSArray* arrPrice = [element elementsForName:@"price"];
        
        GDataXMLElement* price = [arrPrice objectAtIndex:0];
        
        NSString* strPrice = [price stringValue];
        
        meal.mFoodprice = strPrice;
        
        [_arraydata addObject:meal];
        
        NSLog(@"%@",strName);
    }
    
    
}
    
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString* str = @"name";
    
    UITableViewCell* cell = [_tableview dequeueReusableHeaderFooterViewWithIdentifier:str];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:str];
    }
    
    UserInfo* info = [_arraydata objectAtIndex:indexPath.row];
    
    cell.textLabel.text = info.mFoodname;
    cell.detailTextLabel.text = info.mFoodprice;
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
