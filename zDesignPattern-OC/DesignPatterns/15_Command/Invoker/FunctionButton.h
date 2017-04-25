//
//  FunctionButton.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

@interface FunctionButton : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) Command *command;

- (instancetype)initWithName:(NSString *)name andCommand:(Command *)command;

- (void)onClick;

@end
