//
//  CommandNode.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/26.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "CommandNode.h"
#import "LoopCommandNode.h"
#import "PrimitiveCommandNode.h"

@interface CommandNode ()

@property (nonatomic, strong) DPNode *node;

@end

@implementation CommandNode

- (void)interpret:(DPContext *)context
{
    if ([[context currentToken] isEqualToString:@"LOOP"]) {
        _node = [LoopCommandNode new];
        [_node interpret:context];
    }
    else {
        _node = [PrimitiveCommandNode new];
        [_node interpret:context];
    }
}

- (void)execute
{
    [_node execute];
}

@end
