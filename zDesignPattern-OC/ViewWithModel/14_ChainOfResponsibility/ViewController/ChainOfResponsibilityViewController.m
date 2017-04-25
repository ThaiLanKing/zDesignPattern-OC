//
//  ChainOfResponsibilityViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ChainOfResponsibilityViewController.h"
#import "Director.h"
#import "VicePresident.h"
#import "President.h"
#import "Congress.h"

@interface ChainOfResponsibilityViewController ()

@end

@implementation ChainOfResponsibilityViewController

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
    Approver *zwj, *yg, *gj, *meeting;
    zwj = [[Director alloc] initWithName:@"张无忌"];
    yg = [[VicePresident alloc] initWithName:@"杨过"];
    gj = [[President alloc] initWithName:@"郭靖"];
    meeting = [[Congress alloc] initWithName:@"董事会"];
    
    //创建职责链
    zwj.successor = yg;
    yg.successor = gj;
    gj.successor = meeting;
    
    PurchaseRequest *pr1 = [[PurchaseRequest alloc] initWithAmount:45000 number:10001 forPurpose:@"购买倚天剑"];
    [zwj processRequest:pr1];
    
    PurchaseRequest *pr2 = [[PurchaseRequest alloc] initWithAmount:60000 number:10002 forPurpose:@"购买《葵花宝典》"];
    [zwj processRequest:pr2];
    
    PurchaseRequest *pr3 = [[PurchaseRequest alloc] initWithAmount:160000 number:10003 forPurpose:@"购买《金刚经》"];
    [zwj processRequest:pr3];
    
    PurchaseRequest *pr4 = [[PurchaseRequest alloc] initWithAmount:800000 number:10004 forPurpose:@"购买桃花岛"];
    [zwj processRequest:pr4];
}

@end
