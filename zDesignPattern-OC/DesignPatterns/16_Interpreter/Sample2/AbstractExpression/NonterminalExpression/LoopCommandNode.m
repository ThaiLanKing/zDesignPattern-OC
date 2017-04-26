//
//  LoopCommandNode.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/26.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "LoopCommandNode.h"
#import "ExpressionNode.h"

@interface LoopCommandNode ()

@property (nonatomic, assign) NSInteger number; //循环次数
@property (nonatomic, strong) DPNode *commandNode;

@end

@implementation LoopCommandNode

- (void)interpret:(DPContext *)context
{
    [context skipToken:@"LOOP"];
    _number = [context currentNumber];
    [context nextToken];
    _commandNode = [ExpressionNode new]; //循环语句中的表达式
    [_commandNode interpret:context];
}

- (void)execute
{
    for (int i = 0; i < _number; ++i) {
        [_commandNode execute];
    }
}

@end
