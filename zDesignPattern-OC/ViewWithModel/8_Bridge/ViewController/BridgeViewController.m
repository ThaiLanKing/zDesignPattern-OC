//
//  BridgeViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/23.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "BridgeViewController.h"
#import "DPBMPImage.h"
#import "DPGIFImage.h"
#import "WindowsImp.h"
#import "UnixImp.h"

@interface BridgeViewController ()

@end

@implementation BridgeViewController

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
    DPImage *bmp = [DPBMPImage new];
    
    [bmp setImageImp:[WindowsImp new]];
    [bmp parseFile:@"小龙女"];
    
    [bmp setImageImp:[UnixImp new]];
    [bmp parseFile:@"小龙女"];
    
    DPImage *gif = [DPGIFImage new];
    [gif setImageImp:[WindowsImp new]];
    [gif parseFile:@"杨过"];
    
    [gif setImageImp:[UnixImp new]];
    [gif parseFile:@"杨过"];
}

@end
