//
//  InstructionHandler.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "InstructionHandler.h"
#import "AndNode.h"
#import "SentenceNode.h"
#import "DirectionNode.h"
#import "ActionNode.h"
#import "DistanceNode.h"

@interface InstructionHandler ()

@property (nonatomic, copy) NSString *instruction;
@property (nonatomic, strong) AbstractNode *node;

@end

@implementation InstructionHandler

- (void)handle:(NSString *)instruction
{
    AbstractNode *left, *right;
    AbstractNode *direction, *action, *distance;
    DPStack *stack = [DPStack new];
    
    NSArray *words = [instruction componentsSeparatedByString:@" "];
    for (int i = 0; i < words.count; ++i) {
        NSString *curWord = [words[i] lowercaseString];
        if ([curWord isEqualToString:@"and"]) {
            left = (AbstractNode *)[stack pop];
            
            NSString *word1 = words[++i];
            direction = [[DirectionNode alloc] initWithDirection:word1];
            
            NSString *word2 = words[++i];
            action = [[ActionNode alloc] initWithAction:word2];
            
            NSString *word3 = words[++i];
            distance = [[DistanceNode alloc] initWithDistance:word3];
            
            right = [[SentenceNode alloc] initWithDirection:direction action:action distance:distance];
            [stack push:[[AndNode alloc] initWithLeft:left right:right]];
        }
        else {
            NSString *word1 = words[i];
            direction = [[DirectionNode alloc] initWithDirection:word1];
            
            NSString *word2 = words[++i];
            action = [[ActionNode alloc] initWithAction:word2];
            
            NSString *word3 = words[++i];
            distance = [[DistanceNode alloc] initWithDistance:word3];
            
            left = [[SentenceNode alloc] initWithDirection:direction action:action distance:distance];
            [stack push:left];
        }
    }
    self.node = (AbstractNode *)[stack pop];
}

- (NSString *)output
{
    NSString *result = [_node interpret];
    return result;
}

@end


@implementation DPStack
{
    NSMutableArray *_list;
}

- (instancetype)init
{
    if (self = [super init]) {
        _list = [NSMutableArray arrayWithCapacity:0];
    }
    return self;
}

- (void)push:(id)obj
{
    [_list addObject:obj];
}

- (id)pop
{
    id lastObj = [_list lastObject];
    [_list removeLastObject];
    return lastObj;
}

@end
