//
//  FacadeViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "FacadeViewController.h"
#import "EncryptFacade.h"

@interface FacadeViewController ()

@end

@implementation FacadeViewController

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
    EncryptFacade *facade = [[EncryptFacade alloc] init];
    [facade fileEncrypt:@"src.txt" toName:@"dst.txt"];
}

@end
