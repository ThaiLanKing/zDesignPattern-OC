//
//  DPFileWriter.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPFileWriter.h"

@implementation DPFileWriter

- (void)write:(NSString *)encryptStr useName:(NSString *)fileName
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
//    NSString *fileName = [NSString stringWithFormat:@"%ld.txt", (long)[NSDate timeIntervalSinceReferenceDate]];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:fileName];
    
    NSError *error;
    [encryptStr writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:&error];
    
    if (error) {
        NSLog(@"write to file error : %@", [error description]);
    }
}

@end
