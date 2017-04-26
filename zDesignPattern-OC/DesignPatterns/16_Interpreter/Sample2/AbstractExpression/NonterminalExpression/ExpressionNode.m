//
//  ExpressionNode.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/26.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ExpressionNode.h"
#import "CommandNode.h"

@interface ExpressionNode ()

@property (nonatomic, strong) NSMutableArray<DPNode *> *list;

@end

@implementation ExpressionNode

- (instancetype)init
{
    if (self = [super init]) {
        _list = [NSMutableArray arrayWithCapacity:0];
    }
    return self;
}

- (void)interpret:(DPContext *)context
{
    //循环处理Context中的标记
    while (YES) {
        //如果已经没有任何标记，则退出解释
        if (![context currentToken]) {
            break;
        }
        //如果标记为END,则不解释END并结束本次解释过程，可以继续之后的解释
        else if ([[context currentToken] isEqualToString:@"END"]) {
            [context skipToken:@"END"];
            break;
        }
        //如果为其他标记，则解释标记并将其加入命令集合
        else {
            DPNode *commandNode = [CommandNode new];
            [commandNode interpret:context];
            [_list addObject:commandNode];
        }
    }
}

- (void)execute
{
    for (DPNode *node in _list) {
        [node execute];
    }
}

@end
