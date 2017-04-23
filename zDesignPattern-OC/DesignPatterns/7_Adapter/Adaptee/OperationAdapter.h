//
//  OperationAdapter.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/22.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ScoreOperation.h"

@interface OperationAdapter : ScoreOperation

- (NSArray *)sort:(NSMutableArray<NSNumber *> *)scores;
- (NSInteger)search:(NSArray<NSNumber *> *)scores value:(NSInteger)value;

@end
