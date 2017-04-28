//
//  StrategyViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "StrategyViewController.h"
#import "MovieTicket.h"

@interface StrategyViewController ()

@end

@implementation StrategyViewController

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
    MovieTicket *mt = [MovieTicket new];
    double originalPrice = 60.0f;
    double currentPrice = 0;
    
    [mt setPrice:originalPrice];
    NSLog(@"原始票价为：%.1f", originalPrice);
    NSLog(@"---------------------");
    
    Discount *discount;
    
    discount = [StudentDiscount new];
    [mt setDiscount:discount];
    currentPrice = [mt getPrice];
    NSLog(@"折后价：%.1f", currentPrice);
    
    discount = [ChildrenDiscount new];
    [mt setDiscount:discount];
    currentPrice = [mt getPrice];
    NSLog(@"折后价：%.1f", currentPrice);
    
    discount = [VIPDiscount new];
    [mt setDiscount:discount];
    currentPrice = [mt getPrice];
    NSLog(@"折后价：%.1f", currentPrice);
}

@end
