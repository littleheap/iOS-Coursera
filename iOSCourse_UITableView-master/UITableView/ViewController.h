//
//  ViewController.h
//  UITableView
//
//  Created by LittleHeap on 2017/5/23.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
//实现数据视图的普通协议
UITableViewDelegate,
//实现数据视图的数据代理协议
UITableViewDataSource
>
{
    //定义一个数据视图对象
    UITableView* _tableView;
    
    //生命一个数据源
    NSMutableArray* _arrayData;
    
    //添加导航按钮
    UIBarButtonItem* _btnEdit;
    UIBarButtonItem* _btnFinish;
    UIBarButtonItem* _btnDelete;
    
    //设置编辑状态
    BOOL _isEdit;
    
}
@end

