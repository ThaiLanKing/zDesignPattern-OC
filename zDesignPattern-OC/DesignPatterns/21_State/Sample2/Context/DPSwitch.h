//
//  DPSwitch.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPOffState.h"
#import "DPOnState.h"

@interface DPSwitch : NSObject

- (instancetype)initWithName:(NSString *)name;

- (void)setState:(DPState *)dpS;
+ (DPState *)getState:(NSString *)type;

- (void)on;
- (void)off;

@end
