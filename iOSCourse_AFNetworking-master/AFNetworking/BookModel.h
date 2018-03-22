//
//  BookModel.h
//  AFNetworking
//
//  Created by LittleHeap on 2017/5/30.
//  Copyright © 2017年 LittleHeap. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BookModel : NSObject

//书籍名称
@property(retain,nonatomic) NSString* mBookName;
//书籍价格
@property(retain,nonatomic) NSString* mBookPrice;
//书籍作者
@property(retain,nonatomic) NSMutableArray* mBookAuthor;
//书籍评分
@property(retain,nonatomic) NSString* mBookScore;

@end
