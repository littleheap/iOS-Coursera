//
//  ViewController.h
//  XML
//
//  Created by LittleHeap on 2017/5/26.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>{
    
    //数据视图
    UITableView* _tableview;
    //数组对象
    NSMutableArray* _arraydata;
    
}


@end

