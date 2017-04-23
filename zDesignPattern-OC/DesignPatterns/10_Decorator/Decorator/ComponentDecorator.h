//
//  ComponentDecorator.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/23.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "Component.h"

@interface ComponentDecorator : Component
{
    Component *_component;
}

- (instancetype)initWithComponent:(Component *)component;

@end
