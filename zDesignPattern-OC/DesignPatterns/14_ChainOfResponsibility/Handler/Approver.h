//
//  Approver.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PurchaseRequest.h"

@interface Approver : NSObject
/**
 定义后继对象
 */
@property (nonatomic, strong) Approver *successor;

/**
 审批者姓名
 */
@property (nonatomic, copy) NSString *name;

- (instancetype)initWithName:(NSString *)name;

- (void)processRequest:(PurchaseRequest *)request;

@end
