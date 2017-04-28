//
//  Player.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "Player.h"

@interface Player ()

@property (nonatomic, copy) NSString *name;

@end

@implementation Player

- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

- (void)help
{
    NSLog(@"坚持住,%@来救你", self.name);
}

- (void)beAttacked:(AllyControlCenter *)acc
{
    NSLog(@"%@被攻击", self.name);
    [acc notifyObserver:self.name];
}

- (NSString *)getName
{
    return self.name;
}

- (void)setName:(NSString *)name
{
    self.name = name;
}

@end
