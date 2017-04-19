//
//  AbstractFactoryViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/19.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "AbstractFactoryViewController.h"
#import "SpringSkinFactory.h"
#import "SummerSkinFactory.h"

@interface AbstractFactoryViewController ()

@end

@implementation AbstractFactoryViewController

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
    SkinFactory *factory;
    DPButton *btn;
    DPTextField *txtField;
    DPComboBox *comboBox;
    
    factory = [[SpringSkinFactory alloc] init];
    btn = [factory createButton];
    txtField = [factory createTextField];
    comboBox = [factory createComboBox];
    
    [btn display];
    [txtField display];
    [comboBox display];
    
    NSLog(@"change to SummerSkin");
    
    factory = [[SummerSkinFactory alloc] init];
    btn = [factory createButton];
    txtField = [factory createTextField];
    comboBox = [factory createComboBox];
    
    [btn display];
    [txtField display];
    [comboBox display];
}

@end
