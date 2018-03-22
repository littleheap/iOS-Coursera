//
//  ViewController.m
//  JSON
//
//  Created by LittleHeap on 2017/5/25.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"
#import "CityModel.h"

@interface ViewController ()

@end

@implementation ViewController

static NSDictionary* dic;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建数据视图
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    [self parseData];
    
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{

    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 7;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    NSString* id = @"ID";
    
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:id];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:id];
    }
    
    CityModel* city = [_arrayCity objectAtIndex:0];
    
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = city.country;
            break;
        case 1:
            cell.textLabel.text = city.city;
            break;
        case 2:
            cell.textLabel.text = city.cityId;
            break;
        case 3:
            cell.textLabel.text = city.la;
            break;
        case 4:
            cell.textLabel.text = city.lo;
            break;
        case 5:
            cell.textLabel.text = city.condition;
            break;
        case 6:
            cell.textLabel.text = city.date;
            break;
        default:
            break;
    }
    
    return cell;
}

-(void) parseData{

    //获取json文件路径
    NSString* path = [[NSBundle mainBundle] pathForResource:@"weather" ofType:@"json"];
    
    //读取数据
    NSData* dataJson = [NSData dataWithContentsOfFile:path];
    
    //用字典解析数据
    dic = [NSJSONSerialization JSONObjectWithData:dataJson options:NSJSONReadingMutableContainers error:nil];
    
    if([dic isKindOfClass:[NSDictionary class]]){
        
        CityModel* city = [[CityModel alloc] init];
        
        //开始解析数据
        _arrayCity = [[NSMutableArray alloc] init];
        
        NSArray* arrayHeWeather5 = [dic objectForKey:@"HeWeather5"];
        
        NSDictionary* cityDic = [arrayHeWeather5 objectAtIndex:0];
        
        city.country = [[cityDic objectForKey:@"basic"] objectForKey:@"cnty"];
        
        city.city = [[cityDic objectForKey:@"basic"] objectForKey:@"city"];
        
        city.la = [[cityDic objectForKey:@"basic"] objectForKey:@"lat"];
        
        city.lo = [[cityDic objectForKey:@"basic"] objectForKey:@"lon"];
        
        city.cityId = [[cityDic objectForKey:@"basic"] objectForKey:@"id"];

        city.condition = [[[[cityDic objectForKey:@"daily_forecast"] objectAtIndex:0] objectForKey:@"cond"] objectForKey:@"txt_d"];
        
        city.date = [[[cityDic objectForKey:@"daily_forecast"] objectAtIndex:0] objectForKey:@"date"];
        
        [_arrayCity addObject:city];
    }
    
    [_tableView reloadData];
    
}


-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    NSLog(@"dataJson = %@",dic);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
