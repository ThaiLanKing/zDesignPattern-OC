//
//  ConcreteAllyControlCenter.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ConcreteAllyControlCenter.h"
#import "Observer.h"

@implementation ConcreteAllyControlCenter

- (instancetype)initWithAllyName:(NSString *)name
{
    if (self = [super init]) {
        NSLog(@"%@战队组建成功！", name);
        NSLog(@"-------------------");
        self->_allyName = name;
    }
    return self;
}

- (void)notifyObserver:(NSString *)name
{
    NSLog(@"%@战队紧急通知，盟友%@遭受攻击！", self->_allyName, name);
    //遍历观察者，调用每一个盟友的支援方法
    for (Observer *obj in self->_players) {
        if (![[obj getName] isEqualToString:name]) {
            [obj help];
        }
    }
}

@end
