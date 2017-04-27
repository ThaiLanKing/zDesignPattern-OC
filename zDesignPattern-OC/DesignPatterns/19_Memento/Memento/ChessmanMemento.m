//
//  ChessmanMemento.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ChessmanMemento.h"

@interface ChessmanMemento ()

@end

@implementation ChessmanMemento

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

@end
