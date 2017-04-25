//
//  Congress.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "Congress.h"

@implementation Congress

- (void)processRequest:(PurchaseRequest *)request
{
    NSString *result = [NSString stringWithFormat:@"召开董事长审批采购单：%d, 金额：%.1f元, 采购目的：%@", (int)request.number, request.amount, request.purpose];
    NSLog(@"%@", result);
}

@end
