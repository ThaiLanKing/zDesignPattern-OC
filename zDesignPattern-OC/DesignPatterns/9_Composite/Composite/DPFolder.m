//
//  DBFolder.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/23.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPFolder.h"

@interface DPFolder ()

@property (nonatomic, strong) NSMutableArray<AbstractFile *> *fileList;

@end

@implementation DPFolder

- (instancetype)initWithName:(NSString *)name
{
    if (self = [super initWithName:name]) {
        _fileList = [NSMutableArray arrayWithCapacity:0];
    }
    return self;
}

- (void)add:(AbstractFile *)file
{
    [self.fileList addObject:file];
}

- (void)remove:(AbstractFile *)file
{
    [self.fileList removeObject:file];
}

- (AbstractFile *)getChild:(NSInteger)i
{
    if (i >=0 && i < self.fileList.count) {
        return self.fileList[i];
    }
    return nil;
}

- (void)killVirus
{
    NSLog(@"****对文件夹\'%@\'进行杀毒", self->_name);
    for (AbstractFile *file in self.fileList) {
        [file killVirus];
    }
}

@end
