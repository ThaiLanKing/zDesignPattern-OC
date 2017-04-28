//
//  StudentDiscount.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "StudentDiscount.h"

@implementation StudentDiscount

- (double)calculate:(double)price
{
    NSLog(@"学生票：");
    return price * 0.8f;
}

@end
