//
//  AndNode.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "AndNode.h"

@interface AndNode ()

@property (nonatomic, strong) AbstractNode *left;  //And的左表达式
@property (nonatomic, strong) AbstractNode *right; //And的右表达式

@end

@implementation AndNode

- (instancetype)initWithLeft:(AbstractNode *)left right:(AbstractNode *)right
{
    if (self = [super init]) {
        _left = left;
        _right = right;
    }
    return self;
}

- (NSString *)interpret
{
    NSString *result = [NSString stringWithFormat:@"%@再%@", [_left interpret], [_right interpret]];
    return result;
}

@end
