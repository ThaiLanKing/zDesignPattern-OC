//
//  BuilderViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/22.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "BuilderViewController.h"
#import "AngelBuilder.h"
#import "HeroBuilder.h"
#import "DevilBuilder.h"
#import "ActorController.h"

@interface BuilderViewController ()

@end

@implementation BuilderViewController

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
    ActorController *actorController = [[ActorController alloc] init];
    
    AngelBuilder *angelBuilder = [[AngelBuilder alloc] init];
    Actor *angel = [actorController construct:angelBuilder];
    [angel description];
    
    NSLog(@"================");
    
    DevilBuilder *devilBuilder = [[DevilBuilder alloc] init];
    Actor *devil = [actorController construct:devilBuilder];
    [devil description];
    
    NSLog(@"================");
    NSLog(@"优化升级，省略Director");
    HeroBuilder *heroBuilder = [[HeroBuilder alloc] init];
    Actor *hero = [heroBuilder construct];
    [hero description];
}

@end
