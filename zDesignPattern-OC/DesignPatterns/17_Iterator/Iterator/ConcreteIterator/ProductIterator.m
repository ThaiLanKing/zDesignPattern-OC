//
//  ProductIterator.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ProductIterator.h"

@interface ProductIterator ()

@property (nonatomic, strong) ProductList *productList;
@property (nonatomic, copy) NSArray *products;

//定义一个游标，用于记录正向遍历的位置
@property (nonatomic, assign) NSInteger cursor1;
//定义一个游标，用于记录逆向遍历的位置
@property (nonatomic, assign) NSInteger cursor2;

@end

@implementation ProductIterator

- (instancetype)initWithProductList:(ProductList *)list
{
    if (self = [super init]) {
        _productList = list;
        _products = [list getObjects];
        _cursor1 = 0;
        _cursor2 = _products.count - 1;
    }
    return self;
}

- (void)next
{
    if (_cursor1 < _products.count) {
        ++_cursor1;
    }
}

- (BOOL)isLast
{
    return _cursor1 == _products.count;
}

- (void)previous
{
    if (_cursor2 > -1) {
        --_cursor2;
    }
}

- (BOOL)isFirst
{
    return _cursor2 == -1;
}

- (id)getNextItem
{
    return _products[_cursor1];
}

- (id)getPreviousItem
{
    return _products[_cursor2];
}

@end
