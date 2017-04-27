//
//  DPMComponent.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPMComponent.h"
#import "Mediator.h"

@interface DPMComponent ()

@property (nonatomic, weak) Mediator *mediator;

@end

@implementation DPMComponent

- (void)setMediator:(Mediator *)mediator
{
    _mediator = mediator;
}

- (void)changed
{
    [_mediator componentChanged:self];
}

@end
