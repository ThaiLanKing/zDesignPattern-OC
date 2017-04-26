//
//  InterpreterViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "InterpreterViewController.h"
#import "InstructionHandler.h"
#import "ExpressionNode.h"

@interface InterpreterViewController ()

@end

@implementation InterpreterViewController

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
    NSString *instruction = @"up move 5 and down run 10 and left move 5";
    InstructionHandler *handler = [InstructionHandler new];
    [handler handle:instruction];
    NSLog(@"%@", [handler output]);
    
    NSLog(@"------sample2");
    
    NSString *text = @"LOOP 2 PRINT 杨过 SPACE SPACE PRINT 小龙女 BREAK END PRINT 郭靖 SPACE SPACE PRINT 黄蓉";
    DPContext *context = [[DPContext alloc] initWithText:text];
    
    DPNode *node = [ExpressionNode new];
    [node interpret:context];
    [node execute];
}

@end
