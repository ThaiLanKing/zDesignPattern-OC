//
//  ActorController.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/22.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ActorBuilder.h"

@interface ActorController : NSObject

- (Actor *)construct:(ActorBuilder *)ab;

@end
