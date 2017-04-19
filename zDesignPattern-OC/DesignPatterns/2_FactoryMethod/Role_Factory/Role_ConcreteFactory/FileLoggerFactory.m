//
//  FileLoggerFactory.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/19.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "FileLoggerFactory.h"
#import "FileLogger.h"

@implementation FileLoggerFactory

- (Logger *)createLogger
{
    Logger *logger = [[FileLogger alloc] init];
    //创建文件，代码省略
    return logger;
}

@end
