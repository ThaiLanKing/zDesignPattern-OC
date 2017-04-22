//
//  AngelBuilder.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/22.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "AngelBuilder.h"

@implementation AngelBuilder

- (void)buildType
{
    self->_actor.type = @"天使";
}

- (void)buildSex
{
    self->_actor.sex = @"女";
}

- (void)buildFace
{
    self->_actor.face = @"漂亮";
}

- (void)buildCostume
{
    self->_actor.costume = @"白裙";
}

- (void)buildHairstyle
{
    self->_actor.hairStyle = @"披肩长发";
}

@end
