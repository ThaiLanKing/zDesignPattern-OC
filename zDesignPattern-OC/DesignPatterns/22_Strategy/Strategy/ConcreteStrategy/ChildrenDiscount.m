//
//  ChildrenDiscount.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ChildrenDiscount.h"

@implementation ChildrenDiscount

- (double)calculate:(double)price
{
    NSLog(@"儿童票：");
    return price - 10;
}

@end
