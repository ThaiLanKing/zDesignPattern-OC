//
//  ActorBuilder.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/22.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Actor.h"

@interface ActorBuilder : NSObject
{
    Actor *_actor;
}

- (Actor *)createActor;

- (void)buildType;
- (void)buildSex;
- (void)buildFace;
- (void)buildCostume;
- (void)buildHairstyle;


/**
 简化系统结构，将Builder和抽象建造者进行合并

 @return 具体产品
 */
- (Actor *)construct;

@end
