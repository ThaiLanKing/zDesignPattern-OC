//
//  BinarySearch.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/22.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 二分查找类：适配者
 */
@interface BinarySearch : NSObject

/**
 二分查找

 @param values 需要查找的数组
 @param value 需要查找的值
 @return 如果找到则返回值索引，未找到返回-1
 */
- (NSInteger)binarySearch:(NSArray<NSNumber *> *)values value:(NSInteger)value;

@end
