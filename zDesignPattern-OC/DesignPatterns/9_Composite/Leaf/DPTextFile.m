//
//  DBTextFile.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/23.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPTextFile.h"

@interface DPTextFile ()

@end

@implementation DPTextFile

- (void)add:(AbstractFile *)file
{
    NSLog(@"对不起，不支持该方法！");
}

- (void)remove:(AbstractFile *)file
{
    NSLog(@"对不起，不支持该方法！");
}

- (AbstractFile *)getChild:(NSInteger)i
{
    NSLog(@"对不起，不支持该方法！");
    return nil;
}

- (void)killVirus
{
    NSLog(@"----对文本文件\'%@\'进行杀毒", self->_name);
}

@end
