//
//  AbstractObjectList.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractIterator.h"

@interface AbstractObjectList : NSObject

- (instancetype)initWithList:(NSArray *)list;

- (void)addObject:(id)obj;

- (void)removeObject:(id)obj;

- (NSArray *)getObjects;

- (AbstractIterator *)createIterator;

@end
