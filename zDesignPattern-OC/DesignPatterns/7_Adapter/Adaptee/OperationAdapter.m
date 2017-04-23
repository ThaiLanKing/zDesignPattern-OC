//
//  OperationAdapter.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/22.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "OperationAdapter.h"
#import "QuickSort.h"
#import "BinarySearch.h"

@interface OperationAdapter ()

@property (nonatomic, strong) QuickSort *sortObj;
@property (nonatomic, strong) BinarySearch *searchObj;

@end

@implementation OperationAdapter

- (instancetype)init
{
    if (self = [super init]) {
        _sortObj = [[QuickSort alloc] init];
        _searchObj = [[BinarySearch alloc] init];
    }
    return self;
}

- (NSArray *)sort:(NSMutableArray<NSNumber *> *)scores
{
    return [_sortObj quickSort:scores];
}

- (NSInteger)search:(NSArray<NSNumber *> *)scores value:(NSInteger)value
{
    return [_searchObj binarySearch:scores value:value];
}

@end
