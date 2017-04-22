//
//  HeroBuilder.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/22.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "HeroBuilder.h"

@implementation HeroBuilder

- (void)buildType
{
    self->_actor.type = @"英雄";
}

- (void)buildSex
{
    self->_actor.sex = @"男";
}

- (void)buildFace
{
    self->_actor.face = @"英俊";
}

- (void)buildCostume
{
    self->_actor.costume = @"盔甲";
}

- (void)buildHairstyle
{
    self->_actor.hairStyle = @"飘逸";
}

@end
