//
//  Player.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "Observer.h"

@interface Player : Observer

- (instancetype)initWithName:(NSString *)name;

@end
