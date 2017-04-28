//
//  Observer.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AllyControlCenter.h"

@interface Observer : NSObject

- (NSString *)getName;
- (NSString *)setName:(NSString *)name;
- (void)help; //声明支援盟友方法
- (void)beAttacked:(AllyControlCenter *)acc; //声明遭受攻击方法

@end
