//
//  ViewController.m
//  SQLite
//
//  Created by LittleHeap on 2017/5/27.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "ViewController.h"
#import "FMDatabase.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //按钮名称数组
    NSArray* arrTitle = [NSArray arrayWithObjects:@"创建数据库",@"插入数据",@"删除数据",@"查找显示", nil];
    
    //循环初始化四个数据库操作按钮
    for(int i = 0 ; i < 4 ; i++){
        
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        
        btn.frame = CGRectMake(140, 100+80*i, 100, 40);
    
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        
        btn.tag = 100+i;
        
        [btn setTitle:arrTitle[i] forState:UIControlStateNormal];
        
        [self.view addSubview:btn];
        
    }
    
}

-(void) pressBtn:(UIButton*) btn{

    switch (btn.tag) {
        case 100:{
            //创建打开数据库
            //获取手机APP沙盒路径
            NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/db01.db"];
            //创建并打开数据库（初始化）
            _mDB = [FMDatabase databaseWithPath:path];
            if(_mDB != nil){
                NSLog(@"数据库创建成功");
            }
            //打开数据库操作
            BOOL isOpen = [_mDB open];
            if(isOpen){
                NSLog(@"打开数据库成功");
            }
            //将创建SQL语句写到字符串中
            NSString* strCreateTable = @"create table if not exists student(id integer primary key, age integer, name varchar(20));";
            //执行SQL语句
            BOOL isCreate = [_mDB executeUpdate:strCreateTable];
            if(isCreate){
                NSLog(@"创建数据表成功");
            }
            //关闭数据库操作
//            BOOL isClose = [_mDB close];
//            if(isClose){
//                NSLog(@"成功关闭数据库");
//            }
            break;
        }
        case 101:{
            //插入数据
            //获取手机APP沙盒路径
            NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/db01.db"];
            //创建并打开数据库（初始化）
            _mDB = [FMDatabase databaseWithPath:path];
            //确保数据库被加载
            if(_mDB != nil){
                if([_mDB open]){
                    NSString* strInsert = @"insert into student values(1,20,'Jack');";
//                    NSString* strInsert = @"insert into student values(2,30,'Mark');";
                    BOOL isOK = [_mDB executeUpdate:strInsert];
                    if(isOK == YES){
                        NSLog(@"插入数据成功");
                    }
                }
            }
            break;
        }
        case 102:{
            //删除数据
            //获取手机APP沙盒路径
            NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/db01.db"];
            //创建并打开数据库（初始化）
            _mDB = [FMDatabase databaseWithPath:path];
            //创建删除SQL语句
            NSString* strDelete = @"delete from student";
            BOOL isOpen = [_mDB open];
            [_mDB executeUpdate:strDelete];
            NSLog(@"成功清空数据");
            break;
        }
        case 103:{
            //查找数据
            //获取手机APP沙盒路径
            NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/db01.db"];
            //创建并打开数据库（初始化）
            _mDB = [FMDatabase databaseWithPath:path];
            //创建查找SQL语句
            NSString* strQuery = @"select * from student;";
            //打开数据库
            BOOL isOpen = [_mDB open];
            //确保打开数据库
            if(isOpen){
                //执行查找语句返回一个结果结构
                FMResultSet* result = [_mDB executeQuery:strQuery];
                //遍历结果
                while ([result next]) {
                    //获取ID字段
                    int stuId = [result intForColumn:@"id"];
                    //获取年龄字段
                    int stuAge = [result intForColumn:@"age"];
                    //获取名字字段
                    NSString* stuName = [result stringForColumn:@"name"];
                    //打印数据内容
                    NSLog(@"Id = %d , Age = %d , Name = %@",stuId,stuAge,stuName);
                }
            }
            break;
        }

        default:
            break;
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
