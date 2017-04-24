//
//  ProxyViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ProxyViewController.h"
#import "DPProxySearcher.h"

@interface ProxyViewController ()

@end

@implementation ProxyViewController

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
    DPSearcher *searcher = [[DPProxySearcher alloc] init];
    [searcher doSearch:@"杨过" keyword:@"玉女心经"];
    NSLog(@"-----------------");
    [searcher doSearch:@"李莫愁" keyword:@"玉女心经"];
}

@end
