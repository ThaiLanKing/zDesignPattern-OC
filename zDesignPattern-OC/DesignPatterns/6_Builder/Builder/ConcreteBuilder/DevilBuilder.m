//
//  DevilBuilder.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/22.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DevilBuilder.h"

@implementation DevilBuilder

- (void)buildType
{
    self->_actor.type = @"恶魔";
}

- (void)buildSex
{
    self->_actor.sex = @"公";
}

- (void)buildFace
{
    self->_actor.face = @"丑陋";
}

- (void)buildCostume
{
    self->_actor.costume = @"黑衣";
}

- (void)buildHairstyle
{
    self->_actor.hairStyle = @"光头";
}

@end
