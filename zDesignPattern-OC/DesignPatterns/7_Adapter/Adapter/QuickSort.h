//
//  QuickSort.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/22.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 快速排序类：适配者
 */
@interface QuickSort : NSObject

- (NSArray *)quickSort:(NSMutableArray<NSNumber *> *)values;

@end
