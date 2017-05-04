//
//  BinarySearch.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/22.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "BinarySearch.h"

@implementation BinarySearch

- (NSInteger)binarySearch:(NSArray<NSNumber *> *)values value:(NSInteger)value
{
    NSInteger low = 0;
    NSInteger high = values.count - 1;
    while (low <= high) {
        NSInteger mid = (low + high)/2;
        NSNumber *midVal = values[mid];
        
        if ([midVal integerValue] < value) {
            low = mid + 1;
        }
        else if ([midVal integerValue] > value) {
            high = mid - 1;
        }
        else {
            return mid;
        }
    }
    return -1;
}

@end
