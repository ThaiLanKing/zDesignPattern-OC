//
//  WeeklyLog.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/21.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 NSObject是抽象原型类，是声明克隆方法的接口
 
 WeeklyLog是具体原型类
 */
@interface WeeklyLog : NSObject<NSCopying>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *date;
@property (nonatomic, copy) NSString *content;

@end
