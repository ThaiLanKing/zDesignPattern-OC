//
//  VIPDiscount.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "VIPDiscount.h"

@implementation VIPDiscount

- (double)calculate:(double)price
{
    NSLog(@"VIP票：");
    NSLog(@"增加积分！");
    return price * 0.5f;
}

@end
