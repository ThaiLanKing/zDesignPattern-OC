//
//  DPFileReader.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPFileReader.h"

@implementation DPFileReader

- (NSString *)Read:(NSString *)fileNameSrc
{
    NSLog(@"读取文件，获取明文：");
    NSString *filePath = [[NSBundle mainBundle] pathForResource:fileNameSrc ofType:nil];
    
    if (filePath.length == 0) {
        NSLog(@"文件不存在！");
        return nil;
    }
    
    NSError *error = nil;
    NSString *body = [[NSString alloc] initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
    if (error) {
        NSLog(@"文件操作错误！");
        return nil;
    }
    NSLog(@"%@", body);
    return body;
}

@end
