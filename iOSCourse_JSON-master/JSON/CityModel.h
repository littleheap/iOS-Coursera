//
//  CityModel.h
//  JSON
//
//  Created by LittleHeap on 2017/5/25.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CityModel : NSObject{
    
    //国家名称
    NSString* _country;
    //城市名称
    NSString* _city;
    //今天天气
    NSString* _condition;
    //维度
    NSString* _la;
    //经度
    NSString* _lo;
    //id
    NSString* _cityId;
    //时间
    NSString* _date;
    //未来五天天气情况
    NSMutableArray* _conditionArray;
}

@property(retain,nonatomic) NSString* country;

@property(retain,nonatomic) NSString* city;

@property(retain,nonatomic) NSString* condition;

@property(retain,nonatomic) NSString* la;

@property(retain,nonatomic) NSString* lo;

@property(retain,nonatomic) NSString* cityId;

@property(retain,nonatomic) NSString* date;

@property(retain,nonatomic) NSMutableArray* conditionArray;


@end
