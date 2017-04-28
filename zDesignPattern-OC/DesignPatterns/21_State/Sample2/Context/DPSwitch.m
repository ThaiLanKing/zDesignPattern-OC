//
//  DPSwitch.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPSwitch.h"

static DPState *state, *onState, *offState;

@interface DPSwitch ()

@property (nonatomic, copy) NSString *name;

@end

@implementation DPSwitch

- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        _name = name;
        onState = [DPOnState new];
        offState = [DPOffState new];
        state = onState;
    }
    return self;
}

- (void)setState:(DPState *)dpS
{
    state = dpS;
}

+ (DPState *)getState:(NSString *)type
{
    if ([type isEqualToString:@"on"]) {
        return onState;
    }
    else {
        return offState;
    }
}

- (void)on
{
    printf("%s", [_name UTF8String]);
    [state on:self];
    printf("\n");
}

- (void)off
{
    printf("%s", [_name UTF8String]);
    [state off:self];
    printf("\n");
}

@end
