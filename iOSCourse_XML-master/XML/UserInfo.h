//
//  UserInfo.h
//  XML
//
//  Created by LittleHeap on 2017/5/26.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInfo : NSObject
    
    //食物名称
    @property(retain,nonatomic) NSString* mFoodname;
    //食物价格
    @property(retain,nonatomic) NSString* mFoodprice;
    //食物描述
    @property(retain,nonatomic) NSString* mFooddes;
    //食物卡路里
    @property(retain,nonatomic) NSString* mFoodcal;
    
@end
