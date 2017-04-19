//
//  DataBaseLoggerFactory.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/19.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DataBaseLoggerFactory.h"
#import "DatabaseLogger.h"

@implementation DataBaseLoggerFactory

- (Logger *)createLogger
{
    //连接数据库，代码省略
    Logger *logger = [[DatabaseLogger alloc] init];
    //初始化数据库日志记录器，代码省略
    return logger;
}

@end
