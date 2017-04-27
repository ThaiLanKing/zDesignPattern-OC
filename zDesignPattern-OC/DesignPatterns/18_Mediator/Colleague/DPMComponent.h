//
//  DPMComponent.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Mediator;

@interface DPMComponent : NSObject

- (void)setMediator:(Mediator *)mediator;

- (void)changed;

- (void)update;

@end
