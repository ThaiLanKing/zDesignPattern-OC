//
//  InstructionHandler.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DPStack;

/**
 指令处理类：工具类
 */
@interface InstructionHandler : NSObject

- (void)handle:(NSString *)instruction;

- (NSString *)output;

@end



@interface DPStack : NSObject

- (void)push:(id)obj;
- (id)pop;

@end
