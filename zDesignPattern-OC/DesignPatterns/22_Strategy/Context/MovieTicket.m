//
//  MovieTicket.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "MovieTicket.h"

@interface MovieTicket ()

@property (nonatomic, assign) double price;
@property (nonatomic, strong) Discount *discount;

@end

@implementation MovieTicket

- (void)setPrice:(double)price
{
    _price = price;
}

- (void)setDiscount:(Discount *)discount
{
    _discount = discount;
}

- (double)getPrice
{
    //调用折扣类的折扣价计算方法
    return [_discount calculate:_price];
}

@end
