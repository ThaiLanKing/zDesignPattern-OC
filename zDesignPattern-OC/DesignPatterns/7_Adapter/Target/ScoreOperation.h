//
//  ScoreOperation.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/22.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 抽象成绩操作类：目标接口
 */
@interface ScoreOperation : NSObject

- (NSArray *)sort:(NSMutableArray<NSNumber *> *)scores;
- (NSInteger)search:(NSArray<NSNumber *> *)scores value:(NSInteger)value;

@end
