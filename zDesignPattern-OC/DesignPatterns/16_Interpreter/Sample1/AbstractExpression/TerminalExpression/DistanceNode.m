//
//  DistanceNode.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DistanceNode.h"

@interface DistanceNode ()

@property (nonatomic, copy) NSString *distance;

@end

@implementation DistanceNode

- (instancetype)initWithDistance:(NSString *)distance
{
    if (self = [super init]) {
        _distance = distance;
    }
    return self;
}

- (NSString *)interpret
{
    return _distance;
}

@end
