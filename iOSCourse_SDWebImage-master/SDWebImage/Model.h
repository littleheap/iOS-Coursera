//
//  Model.h
//  SDWebImage
//
//  Created by LittleHeap on 2017/6/1.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

//名称
@property(retain,nonatomic) NSString* name;
//价格
@property(retain,nonatomic) NSString* price;
//作者
@property(retain,nonatomic) NSString* author;
//图片地址
@property(retain,nonatomic) NSString* imageUrl;

@end
