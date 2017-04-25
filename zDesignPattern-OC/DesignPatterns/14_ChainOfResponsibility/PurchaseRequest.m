//
//  PurchaseRequest.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "PurchaseRequest.h"

@interface PurchaseRequest ()

@end

@implementation PurchaseRequest

- (instancetype)initWithAmount:(double)amount number:(NSInteger)number forPurpose:(NSString *)purpose
{
    if (self = [super init]) {
        _amount = amount;
        _number = number;
        _purpose= purpose;
    }
    return self;
}

@end
