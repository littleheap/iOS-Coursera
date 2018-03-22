//
//  ViewController.h
//  JSON
//
//  Created by LittleHeap on 2017/5/25.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
UITableViewDelegate,
UITableViewDataSource
>
{
//数据视图定义
    UITableView* _tableView;
//天气数组
    NSMutableArray* _arrayCity;
}



@end

