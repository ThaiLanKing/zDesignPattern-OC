//
//  AbstractObjectList.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "AbstractObjectList.h"

@interface AbstractObjectList ()

@property (nonatomic, strong) NSMutableArray *objects;

@end

@implementation AbstractObjectList

- (instancetype)initWithList:(NSArray *)list
{
    if (self = [super init]) {
        _objects = [list mutableCopy];
    }
    return self;
}

- (void)addObject:(id)obj
{
    [self.objects addObject:obj];
}

- (void)removeObject:(id)obj
{
    [self.objects removeObject:obj];
}

- (NSArray *)getObjects
{
    return self.objects;
}

@end
