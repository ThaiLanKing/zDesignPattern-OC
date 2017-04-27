//
//  AbstractIterator.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstractIterator : NSObject

- (void)next;
- (BOOL)isLast;
- (void)previous;
- (BOOL)isFirst;
- (id)getNextItem;
- (id)getPreviousItem;

@end
