//
//  Employee.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Department.h"

@interface Employee : NSObject

- (void)accept:(Department *)handler;

@end
