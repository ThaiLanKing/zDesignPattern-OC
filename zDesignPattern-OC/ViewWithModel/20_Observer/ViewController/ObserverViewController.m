//
//  ObserverViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ObserverViewController.h"
#import "ConcreteAllyControlCenter.h"
#import "Player.h"

@interface ObserverViewController ()

@end

@implementation ObserverViewController

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
    AllyControlCenter *acc = [[ConcreteAllyControlCenter alloc] initWithAllyName:@"金庸群侠"];
    
    Observer *player1 = [[Player alloc] initWithName:@"杨过"];
    [acc join:player1];
    
    Observer *player2 = [[Player alloc] initWithName:@"令狐冲"];
    [acc join:player2];
    
    Observer *player3 = [[Player alloc] initWithName:@"张无忌"];
    [acc join:player3];
    
    Observer *player4 = [[Player alloc] initWithName:@"段誉"];
    [acc join:player4];
    
    [player1 beAttacked:acc];
}

@end
