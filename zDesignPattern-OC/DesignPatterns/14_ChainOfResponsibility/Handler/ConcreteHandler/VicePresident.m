//
//  VicePresident.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "VicePresident.h"

@implementation VicePresident

- (void)processRequest:(PurchaseRequest *)request
{
    if (request.amount < 100000) {
        NSString *result = [NSString stringWithFormat:@"副董事长%@审批采购单：%d, 金额：%.1f元, 采购目的：%@", self.name, (int)request.number, request.amount, request.purpose];
        NSLog(@"%@", result);
    }
    else {
        [self.successor processRequest:request];
    }
}

@end
