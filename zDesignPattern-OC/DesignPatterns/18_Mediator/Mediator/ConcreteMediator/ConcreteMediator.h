//
//  ConcreteMediator.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "Mediator.h"
#import "DPMButton.h"
#import "DPMList.h"
#import "DPMTextBox.h"
#import "DPMComboBox.h"

@interface ConcreteMediator : Mediator

@property (nonatomic, strong) DPMButton *addButton;
@property (nonatomic, strong) DPMList *list;
@property (nonatomic, strong) DPMTextBox *userNameTxtBox;
@property (nonatomic, strong) DPMComboBox *cb;

@end
