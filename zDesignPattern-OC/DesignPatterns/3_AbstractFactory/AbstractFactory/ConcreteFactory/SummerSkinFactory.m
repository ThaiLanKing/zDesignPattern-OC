//
//  SummerSkinFactory.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/19.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "SummerSkinFactory.h"
#import "SummerButton.h"
#import "SummerTextField.h"
#import "SummerComboBox.h"

@implementation SummerSkinFactory

- (DPButton *)createButton
{
    return [[SummerButton alloc] init];
}

- (DPTextField *)createTextField
{
    return [[SummerTextField alloc] init];
}

- (DPComboBox *)createComboBox
{
    return [[SummerComboBox alloc] init];
}

@end
