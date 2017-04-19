//
//  SingletonViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/19.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "SingletonViewController.h"
#import "LoadBalancer.h"

@interface SingletonViewController ()

@end

@implementation SingletonViewController

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
    LoadBalancer *loadBalancer1, *loadBalancer2, *loadBalancer3, *loadBalancer4;
    loadBalancer1 = [LoadBalancer loadBalancer];
    loadBalancer2 = [LoadBalancer loadBalancer];
    loadBalancer3 = [LoadBalancer loadBalancer];
    loadBalancer4 = [LoadBalancer loadBalancer];
    
    if ([loadBalancer1 isEqual:loadBalancer2] && [loadBalancer2 isEqual:loadBalancer3] && [loadBalancer3 isEqual:loadBalancer4]) {
        NSLog(@"负载服务器具有唯一性");
    }
    
    [loadBalancer1 addServer:@"Server 1"];
    [loadBalancer1 addServer:@"Server 2"];
    [loadBalancer1 addServer:@"Server 3"];
    [loadBalancer1 addServer:@"Server 4"];
    
    for (int i = 0; i < 10; ++i) {
        NSString *server = [loadBalancer1 getServer];
        NSLog(@"分发请求至服务器 ： %@", server);
    }
}

@end
