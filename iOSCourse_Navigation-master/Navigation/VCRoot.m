//
//  VCRoot.m
//  Navigation
//
//  Created by LittleHeap on 2017/5/18.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import "VCRoot.h"
#import "VCSecond.h"


@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //添加背景颜色
    self.view.backgroundColor = [UIColor orangeColor];
    //设置导航栏标题文字
    self.title = @"Title";
    //设置导航元素项目的标题（优先级高于上面）
    self.navigationItem.title = @"View Root";
    //创建导航栏的左侧按钮
    UIBarButtonItem* leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"Left" style:UIBarButtonItemStyleDone target:self action:@selector(pressLeft)];
    //将导航栏左侧按钮赋值
    self.navigationItem.leftBarButtonItem = leftBtn;
    //创建导航栏的右侧按钮
    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStyleDone target:self action:@selector(pressNext)];
    //将导航栏右侧按钮赋值
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    //设置导航栏的透明度，默认为YES透明
    self.navigationController.navigationBar.translucent = YES;
    //设置导航栏的风格颜色
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    
    //进阶属性
    //设置导航栏风格颜色
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    //设置导航栏的颜色（优先级高）
    self.navigationController.navigationBar.barTintColor = [UIColor grayColor];
    //设置按钮当行元素项目的风格颜色
    self.navigationController.navigationBar.tintColor = [UIColor blueColor];
    //隐藏导航栏
    self.navigationController.navigationBar.hidden = NO;
    self.navigationController.navigationBarHidden = NO;
    //实现工具栏对象（下方）
    self.navigationController.toolbarHidden = NO;
    self.navigationController.toolbar.translucent = NO;
    //工具栏添加按钮
    UIBarButtonItem* btn01 = [[UIBarButtonItem alloc] initWithTitle:@"Left" style:UIBarButtonItemStylePlain target:nil action:nil];
    UIBarButtonItem* btn02 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:nil action:nil];
    //设置占位按钮
    UIBarButtonItem* btnFix = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    //设置占位按钮宽度
    btnFix.width = 275;
    //把按钮排列到数组中
    NSArray* arrayBtns = [NSArray arrayWithObjects:btn01,btnFix,btn02,nil];
    self.toolbarItems = arrayBtns;
    

}

-(void) pressLeft{
    NSLog(@"Left Button Pressed");
}

-(void) pressNext{
    NSLog(@"Right Button Pressed");
    
    //创建新的视图控制器
    VCSecond* sec = [[VCSecond alloc] init];
    //使用当前视图控制器的导航控制器对象
    [self.navigationController pushViewController:sec animated:YES];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
