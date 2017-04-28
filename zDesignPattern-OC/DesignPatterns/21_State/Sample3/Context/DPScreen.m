//
//  DPScreen.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPScreen.h"
#import "DPScreenNormalState.h"
#import "DPScreenLargerState.h"
#import "DPScreenLargestState.h"

@interface DPScreen ()

@property (nonatomic, strong) DPScreenState *currentState;
@property (nonatomic, strong) DPScreenNormalState *normalState;
@property (nonatomic, strong) DPScreenLargerState *largerState;
@property (nonatomic, strong) DPScreenLargestState *largestState;

@end

@implementation DPScreen

- (instancetype)init
{
    if (self = [super init]) {
        _normalState = [DPScreenNormalState new];
        _largerState = [DPScreenLargerState new];
        _largestState = [DPScreenLargestState new];
        
        _currentState = _normalState;
        [_currentState display];
    }
    return self;
}

- (void)setState:(DPScreenState *)state
{
    self.currentState = state;
}

- (void)onClick
{
    if (self.currentState == _normalState) {
        [self setState:_largerState];
        [self.currentState display];
    }
    else if (self.currentState == _largerState) {
        [self setState:_largestState];
        [self.currentState display];
    }
    else if (self.currentState == _largestState) {
        [self setState:_normalState];
        [self.currentState display];
    }
}

@end
