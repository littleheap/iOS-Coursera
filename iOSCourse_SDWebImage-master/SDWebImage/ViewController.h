//
//  ViewController.h
//  SDWebImage
//
//  Created by LittleHeap on 2017/6/1.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<

//数据视图协议
UITableViewDelegate,
UITableViewDataSource

>{
    
    //声明数据视图
    UITableView* _tableView;
    
    //声明数据源对象
    NSMutableArray* _arrayData;
    
    //刷新按钮
    UIBarButtonItem* _btnLoadData;
    
    //编辑按钮
    UIBarButtonItem* _btnEdit;

}


@end

