//
//  zDesignPatternBaseViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/19.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "zDesignPatternBaseViewController.h"
#import "SimpleFactoryViewController.h"

@interface zDesignPatternBaseViewController ()

@end

@implementation zDesignPatternBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testDesignPattern
{
    NSLog(@"不做任何事，交给子类处理");
}

@end
