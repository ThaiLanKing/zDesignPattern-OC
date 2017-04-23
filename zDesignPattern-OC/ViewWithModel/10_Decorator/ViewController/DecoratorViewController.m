//
//  DecoratorViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/23.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DecoratorViewController.h"
#import "ScrollBarDecorator.h"
#import "BlackBorderDecorator.h"
#import "DPWindow.h"
#import "DPListBox.h"

@interface DecoratorViewController ()

@end

@implementation DecoratorViewController

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
    Component *component, *componentSB;
    component = [[DPWindow alloc] init];
    componentSB = [[ScrollBarDecorator alloc] initWithComponent:component];
    [componentSB display];
    
    component = [[DPListBox alloc] init];
    Component *componentBB = [[BlackBorderDecorator alloc] initWithComponent:component];
    [componentBB display];
}

@end
