//
//  SentenceNode.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "SentenceNode.h"

@interface SentenceNode ()

@property (nonatomic, strong) AbstractNode *direction;
@property (nonatomic, strong) AbstractNode *action;
@property (nonatomic, strong) AbstractNode *distance;

@end

@implementation SentenceNode

- (instancetype)initWithDirection:(AbstractNode *)direction
                           action:(AbstractNode *)action
                         distance:(AbstractNode *)distance
{
    if (self = [super init]) {
        _direction = direction;
        _action = action;
        _distance = distance;
    }
    return self;
}

- (NSString *)interpret
{
    NSString *result = [NSString stringWithFormat:@"%@%@%@", [_direction interpret], [_action interpret], [_distance interpret]];
    return result;
}

@end
