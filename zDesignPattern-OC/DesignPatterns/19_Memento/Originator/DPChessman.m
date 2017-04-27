//
//  DPChessman.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPChessman.h"
#import "ChessmanMemento.h"

@interface DPChessman ()

@end

@implementation DPChessman

- (instancetype)initWithTitle:(NSString *)title
                            x:(NSInteger)x
                            y:(NSInteger)y
{
    if (self = [super init]) {
        _label = title;
        _x = x;
        _y = y;
    }
    return self;
}

- (ChessmanMemento *)save
{
    return [[ChessmanMemento alloc] initWithTitle:_label x:_x y:_y];
}

- (void)restore:(ChessmanMemento *)memento
{
    self.label = memento.label;
    self.x = memento.x;
    self.y = memento.y;
}

@end
