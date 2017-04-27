//
//  IteratorViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "IteratorViewController.h"
#import "ProductIterator.h"

@interface IteratorViewController ()

@end

@implementation IteratorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testDesignPattern
{
    NSArray *products = @[@"倚天剑", @"屠龙刀", @"断肠草", @"葵花宝典", @"四十二章经"];
    
    AbstractObjectList *list;
    AbstractIterator *iterator;
    
    list = [[ProductList alloc] initWithList:products];
    iterator = [list createIterator];
    
    NSLog(@"正向遍历");
    while (![iterator isLast]) {
        printf("%s, ", [[iterator getNextItem] UTF8String]);
        [iterator next];
    }
    printf("\n");
    NSLog(@"--------------------");
    NSLog(@"逆向遍历");
    while (![iterator isFirst]) {
        printf("%s, ", [[iterator getPreviousItem] UTF8String]);
        [iterator previous];
    }
}

@end
