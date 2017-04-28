//
//  StateViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "StateViewController.h"
#import "Account.h"
#import "DPSwitch.h"
#import "DPScreen.h"

@interface StateViewController ()

@end

@implementation StateViewController

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
    [self testSample1];
//    [self testSample2];
//    [self testSample3];
}

- (void)testSample1
{
    Account *acc = [[Account alloc] initWithOwner:@"段誉" balance:0.0];
    [acc deposit:1000];
    [acc withdraw:2000];
    [acc deposit:3000];
    [acc withdraw:4000];
    [acc withdraw:1000];
    [acc computeInterest];
}

- (void)testSample2
{
    DPSwitch *s1 = [[DPSwitch alloc] initWithName:@"开关1"];
    DPSwitch *s2 = [[DPSwitch alloc] initWithName:@"开关2"];
    
    [s1 on];
    [s2 on];
    
    [s1 off];
    [s2 off];
    
    [s2 on];
    [s1 on];
}

- (void)testSample3
{
    DPScreen *screen = [DPScreen new];
    [screen onClick];
    [screen onClick];
    [screen onClick];
}

@end
