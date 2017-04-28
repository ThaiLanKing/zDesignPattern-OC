//
//  TemplateMethodViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "TemplateMethodViewController.h"
#import "CurrentAccount.h"
#import "SavingAccount.h"

@interface TemplateMethodViewController ()

@end

@implementation TemplateMethodViewController

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
    BankAccount *account = [CurrentAccount new];
    [account handleAccount:@"张无忌" password:@"123456"];
    
    NSLog(@"------------------");
    
    account = [SavingAccount new];
    [account handleAccount:@"张无忌" password:@"123456"];
}

@end
