//
//  ActorController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/22.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ActorController.h"

@implementation ActorController

- (Actor *)construct:(ActorBuilder *)ab
{
    Actor *actor;
    [ab buildType];
    [ab buildSex];
    [ab buildFace];
    [ab buildCostume];
    [ab buildHairstyle];
    actor = [ab createActor];
    return actor;
}

@end
