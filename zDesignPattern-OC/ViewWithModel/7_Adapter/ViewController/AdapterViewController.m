//
//  AdapterViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/22.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "AdapterViewController.h"
#import "OperationAdapter.h"

@interface AdapterViewController ()

@end

@implementation AdapterViewController

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
    ScoreOperation *operation = [[OperationAdapter alloc] init];
    NSArray *scores = @[@84, @76, @50, @69, @90, @91, @88, @96];
    NSArray *result;
    NSInteger score;
    
    NSLog(@"成绩排序结果：");
    result = [operation sort:[scores mutableCopy]];
    NSLog(@"%@", result);
    
    NSLog(@"查找成绩90：");
    score = [operation search:result value:90];
    if (score != -1) {
        NSLog(@"找到成绩90");
    }
    else {
        NSLog(@"没有找到成绩90");
    }
    
    NSLog(@"查找成绩92：");
    score = [operation search:result value:92];
    if (score != -1) {
        NSLog(@"找到成绩92");
    }
    else {
        NSLog(@"没有找到成绩92");
    }
}

@end
