//
//  PurchaseRequest.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PurchaseRequest : NSObject
/**
 采购金额
 */
@property (nonatomic, assign, readonly) double amount;

/**
 采购单编号
 */
@property (nonatomic, assign, readonly) NSInteger number;

/**
 采购目的
 */
@property (nonatomic, copy, readonly) NSString *purpose;

- (instancetype)initWithAmount:(double)amount number:(NSInteger)number forPurpose:(NSString *)purpose;

@end
