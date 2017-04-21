//
//  PrototypeViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/21.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "PrototypeViewController.h"
#import "WeeklyLog.h"

@interface PrototypeViewController ()

@end

@implementation PrototypeViewController

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
    WeeklyLog *log_previous = [[WeeklyLog alloc] init];
    log_previous.name = @"张无忌";
    log_previous.date = @"第12周";
    log_previous.content = @"这周工作很忙，每天加班！";
    
    WeeklyLog *log_new = [log_previous copy];
    log_new.date = @"第13周";
    log_new.name = @"赵敏";
    
    NSLog(@"****旧周报****");
    NSLog(@"周次：%@", log_previous.date);
    NSLog(@"姓名：%@", log_previous.name);
    NSLog(@"内容：%@", log_previous.content);
    
    NSLog(@"****新周报****");
    NSLog(@"周次：%@", log_new.date);
    NSLog(@"姓名：%@", log_new.name);
    NSLog(@"内容：%@", log_new.content);

    
}

@end
