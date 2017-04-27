//
//  MementoCaretaker.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "MementoCaretaker.h"

@interface MementoCaretaker ()

@property (nonatomic, strong) NSMutableArray *mementoList;

@end

@implementation MementoCaretaker

- (instancetype)init
{
    if (self = [super init]) {
        _mementoList = [NSMutableArray arrayWithCapacity:0];
    }
    return self;
}

- (ChessmanMemento *)getMemento:(NSInteger)index
{
    return self.mementoList[index];
}

- (void)setMemento:(ChessmanMemento *)memento
{
    [self.mementoList addObject:memento];
}

@end
