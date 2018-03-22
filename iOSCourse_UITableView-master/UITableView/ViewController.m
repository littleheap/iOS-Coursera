//
//  ViewController.m
//  UITableView
//
//  Created by LittleHeap on 2017/5/23.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建数据视图
    //风格分为普通风格和分组风格
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    //设置数据视图的代理对象
    _tableView.delegate = self;
    //设置数据视图的数据源对象
    _tableView.dataSource = self;
    
    //添加显示数据视图
    [self.view addSubview:_tableView];
    
    //创建一个可变数组
    _arrayData = [[NSMutableArray alloc] init];

    for(int i = 'A'; i <= 'E'; i++){
        
        NSMutableArray* array = [[NSMutableArray alloc] init];
        
        for(int j = 1; j <= 4 ; j++){
            
            NSString* str = [NSString stringWithFormat:@"%c%d",i,j];
            
            [array addObject:str];
        }
        
        [_arrayData addObject:array];
    }
    
    
    //高级进阶
    
    //数据视图的头部设定
    _tableView.tableHeaderView = nil;
    //数据视图的底部设定
    _tableView.tableFooterView = nil;
    
    //数据发生变化，重新加载视图
    [_tableView reloadData];
    
    //创建按钮
    [self createBtn];
}

//设置数据视图的组数
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{

    return _arrayData.count;
}

//获取每组元素的行数
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSInteger num = [[_arrayData objectAtIndex:section] count];
    
    return num;
}

//创建单元格函数
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    NSString*  cellStr = @"Cell";
    
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:cellStr];
    
    if(cell == nil) {
        //创建一个单元格(可添加子标题模式)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellStr];
    }
    
    //设置单元格本身标签
    cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
    //设置单元格子标题
    cell.detailTextLabel.text = @"SubTitle";
    
    //单元格添加图片
    NSString* str = [NSString stringWithFormat:@"1.JPG"];
    
    UIImage* image = [UIImage imageNamed:str];
    
    cell.imageView.image = image;
    
    return cell;
}

//返回单元格高度
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return 50;
}

//每组头部标题
-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{

    return @"Header Topic";
}

//每组尾部标题
-(NSString*) tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    
    return @"Footer Topic";
}

//获取组的头部高度
-(CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 40;
}

//获取组的尾部函数
-(CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    return 40;
}


-(void) createBtn{

    _isEdit = NO;
    
    _btnEdit = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(pressEdit)];

    _btnFinish = [[UIBarButtonItem alloc] initWithTitle:@"Finish" style:UIBarButtonItemStylePlain target:self action:@selector(pressFinish)];
    
    _btnDelete = [[UIBarButtonItem alloc] initWithTitle:@"Delete" style:UIBarButtonItemStylePlain target:self action:@selector(pressDelete)];
    
    self.navigationItem.rightBarButtonItem = _btnEdit;
}

-(void) pressEdit{
    
    _isEdit = YES;
    
    self.navigationItem.rightBarButtonItem = _btnFinish;
    
    [_tableView setEditing:YES];
    
    self.navigationItem.leftBarButtonItem = _btnDelete;
}

-(void) pressFinish{
    
    _isEdit = NO;
    
    self.navigationItem.rightBarButtonItem = _btnEdit;
    
    [_tableView setEditing:NO];
    
    self.navigationItem.leftBarButtonItem = nil;
}

-(void) pressDelete{

}

//单元格显示效果协议
-(UITableViewCellEditingStyle) tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //默认是下面的删除状态
    return UITableViewCellEditingStyleDelete;
    
    //桥接状态（多选）
//    return UITableViewCellEditingStyleDelete | UITableViewCellEditingStyleInsert;
}

//可以显示左划显示编辑状态
-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //触发事件
    NSLog(@"Delete");
    
    //删除相应数据源
    [_arrayData[indexPath.section] removeObjectAtIndex:indexPath.row];
    
    //重新加载数据源
    [_tableView reloadData];
}

//选中单元格识别
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"Select %@",_arrayData[indexPath.section][indexPath.row]);
}

//取消选中单元格识别
-(void) tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"Deselect %@",_arrayData[indexPath.section][indexPath.row]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
