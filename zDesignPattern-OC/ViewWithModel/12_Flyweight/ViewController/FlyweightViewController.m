//
//  FlyweightViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "FlyweightViewController.h"
#import "IgoChessmanFactory.h"

@interface FlyweightViewController ()

@end

@implementation FlyweightViewController

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
    IgoChessman *black1, *black2, *black3, *white1, *white2;
    IgoChessmanFactory *factory;
    
    factory = [IgoChessmanFactory sharedInstance];
    
    black1 = [factory getIgoChessman:@"b"];
    black2 = [factory getIgoChessman:@"b"];
    black3 = [factory getIgoChessman:@"b"];
    NSLog(@"判断两颗黑子是否相同：%d", black1 == black2);
    
    white1 = [factory getIgoChessman:@"w"];
    white2 = [factory getIgoChessman:@"w"];
    NSLog(@"判断两颗白子是否相同：%d", white1 == white2);
    
//    [black1 display];
//    [black2 display];
//    [black3 display];
//    
//    [white1 display];
//    [white2 display];
    
    [black1 display:[[DPCoordinates alloc] initWithX:1 Y:2]];
    [black2 display:[[DPCoordinates alloc] initWithX:3 Y:4]];
    [black3 display:[[DPCoordinates alloc] initWithX:1 Y:3]];
    
    [white1 display:[[DPCoordinates alloc] initWithX:2 Y:5]];
    [white2 display:[[DPCoordinates alloc] initWithX:2 Y:4]];
}

@end
