//
//  MediatorViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "MediatorViewController.h"
#import "ConcreteMediator.h"

@interface MediatorViewController ()

@end

@implementation MediatorViewController

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
    ConcreteMediator *mediator = [ConcreteMediator new];
    
    DPMButton *addBtn = [DPMButton new];
    DPMList *list = [DPMList new];
    DPMComboBox *cb = [DPMComboBox new];
    DPMTextBox *userNameTxtBox = [DPMTextBox new];
    
    [addBtn setMediator:mediator];
    [list setMediator:mediator];
    [cb setMediator:mediator];
    [userNameTxtBox setMediator:mediator];
    
    mediator.addButton = addBtn;
    mediator.list = list;
    mediator.cb = cb;
    mediator.userNameTxtBox = userNameTxtBox;
    
    [addBtn changed];
    NSLog(@"------------");
    [list changed];
}

@end
