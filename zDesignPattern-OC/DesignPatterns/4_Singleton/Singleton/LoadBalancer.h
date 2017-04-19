//
//  LoadBalancer.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/19.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoadBalancer : NSObject

+ (LoadBalancer *)loadBalancer;

- (void)addServer:(NSString *)serverName;
- (void)removeServer:(NSString *)serverName;
- (NSString *)getServer;

@end
