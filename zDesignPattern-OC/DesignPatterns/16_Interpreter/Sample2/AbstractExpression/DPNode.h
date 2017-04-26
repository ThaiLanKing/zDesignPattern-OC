//
//  DPNode.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/26.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPContext.h"

@interface DPNode : NSObject

- (void)interpret:(DPContext *)context;
- (void)execute; //声明一个方法用于执行标记对应的命令

@end
