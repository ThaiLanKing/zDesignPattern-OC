//
//  SimpleFactoryViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/19.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "SimpleFactoryViewController.h"
#import "ChartFactory.h"

@interface SimpleFactoryViewController ()

@end

@implementation SimpleFactoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"简单工厂模式";
    
    Chart *chart = [ChartFactory chartOfType:kChartTypeHistogram];
    [chart display];
    
    chart = [ChartFactory chartOfType:kChartTypePie];
    [chart display];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
