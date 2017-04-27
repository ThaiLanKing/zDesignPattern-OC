//
//  ProductList.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ProductList.h"
#import "ProductIterator.h"

@interface ProductList ()

@end

@implementation ProductList

- (AbstractIterator *)createIterator
{
    return [[ProductIterator alloc] initWithProductList:self];
}

@end
