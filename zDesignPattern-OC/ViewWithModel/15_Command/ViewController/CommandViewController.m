//
//  CommandViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "CommandViewController.h"
#import "HelpCommand.h"
#import "MinimizeCommand.h"
#import "FBSettingWindow.h"

@interface CommandViewController ()

@end

@implementation CommandViewController

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
    FBSettingWindow *fbSW = [[FBSettingWindow alloc] initWithTitle:@"功能键设置"];
    
    FunctionButton *fb1, *fb2;
    fb1 = [[FunctionButton alloc] initWithName:@"功能键1" andCommand:nil];
    fb2 = [[FunctionButton alloc] initWithName:@"功能键2" andCommand:nil];
    
    Command *command1, *command2;
    command1 = [HelpCommand new];
    command2 = [MinimizeCommand new];
    
    fb1.command = command1;
    fb2.command = command2;
    
    [fbSW addFunctionButton:fb1];
    [fbSW addFunctionButton:fb2];
    [fbSW display];
    
    [fb1 onClick];
    [fb2 onClick];
    
    NSLog(@"==============");
    
    fb1.command = command2;
    fb2.command = command1;
    
    [fb1 onClick];
    [fb2 onClick];
}

@end
