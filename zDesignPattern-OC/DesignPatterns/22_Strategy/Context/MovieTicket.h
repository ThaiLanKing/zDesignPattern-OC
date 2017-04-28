//
//  MovieTicket.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VIPDiscount.h"
#import "ChildrenDiscount.h"
#import "StudentDiscount.h"

@interface MovieTicket : NSObject

- (void)setPrice:(double)price;
- (void)setDiscount:(Discount *)discount;
- (double)getPrice;

@end
