//
//  ActorBuilder.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/22.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ActorBuilder.h"

@interface ActorBuilder ()

@end

@implementation ActorBuilder

- (instancetype)init
{
    if (self = [super init]) {
        _actor = [[Actor alloc] init];
    }
    return self;
}

- (Actor *)createActor
{
    return _actor;
}

- (Actor *)construct
{
    [self buildType];
    [self buildSex];
    [self buildFace];
    [self buildCostume];
    [self buildHairstyle];
    return _actor;
}

#pragma mark - do nothing

- (void)buildType
{

}

- (void)buildSex
{

}

- (void)buildFace
{

}

- (void)buildCostume
{

}

- (void)buildHairstyle
{

}

@end
