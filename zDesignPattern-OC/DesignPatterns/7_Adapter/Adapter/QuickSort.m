//
//  QuickSort.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/22.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort

- (NSMutableArray *)quickSort:(NSMutableArray<NSNumber *> *)values
{
    [self sort:values :0 :values.count-1];
    return values;
}

- (void)sort:(NSMutableArray<NSNumber *> *)values :(NSInteger)l :(NSInteger)r
{
    NSInteger p = 0;
    if (l < r) {
        p = [self partition:values :l :r];
        [self sort:values :l :p-1];
        [self sort:values :p+1 :r];
    }
}

- (NSInteger)partition:(NSMutableArray<NSNumber *> *)values :(NSInteger)l :(NSInteger)r
{
    NSNumber *x = values[r];
    NSInteger j = l;
    for (NSInteger i = l; i <= r - 1; ++i) {
        if ([values[i] integerValue] <= [x integerValue]) {
            [self swap:values :j :i];
            ++j;
        }
    }
    [self swap:values :j :r];
    return j;
}

- (void)swap:(NSMutableArray *)values :(NSInteger)i :(NSInteger)j
{
    id temp = values[i];
    values[i] = values[j];
    values[j] = temp;
}

#pragma mark - 快排byZYH

//- (void)zSort:(NSMutableArray<NSNumber *> *)values left:(NSInteger)l right:(NSInteger)r
//{
//    NSInteger p = 0;
//    if (l < r) {
//        p = [self zPartition:values left:l right:r];
//        [self zSort:values left:l right:p-1];
//        [self zSort:values left:p+1 right:r];
//    }
//}
//
//- (NSInteger)zPartition:(NSMutableArray<NSNumber *> *)values left:(NSInteger)l right:(NSInteger)r
//{
//    NSInteger key = [values[r] integerValue];
//    NSInteger partitionIndex = r;
//    for (NSInteger i = l; i < r - 1; ++i) {
//        NSInteger iValue = [values[i] integerValue];
//        
//        if (iValue <= key && i > partitionIndex) {
//            [self swap:values :i :partitionIndex];
//            partitionIndex = i;
//        }
//        else if (iValue >= key && i < partitionIndex) {
//            [self swap:values :i :partitionIndex];
//            partitionIndex = i;
//        
//        }
//    }
//    values[partitionIndex] = @(key);
//    
//    NSLog(@"partition : %d values : %@", (int)partitionIndex, values);
//    
//    return partitionIndex;
//}

@end
