//
//  LoadBalancer.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/19.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "LoadBalancer.h"

@interface LoadBalancer ()

@property (nonatomic, strong) NSMutableArray *serverList;

@end

@implementation LoadBalancer

+ (LoadBalancer *)loadBalancer
{
    static LoadBalancer *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[LoadBalancer alloc] init];
        sharedInstance.serverList = [NSMutableArray arrayWithCapacity:0];
    });
    return sharedInstance;
}

- (void)addServer:(NSString *)serverName
{
    [self.serverList addObject:serverName];
}

- (void)removeServer:(NSString *)serverName
{
    [self.serverList removeObject:serverName];
}

- (NSString *)getServer
{
    NSInteger randomServerIndex = arc4random() % [self.serverList count];
    return self.serverList[randomServerIndex];
}

@end
