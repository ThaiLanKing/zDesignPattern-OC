//
//  SpringSkinFactory.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/19.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "SpringSkinFactory.h"
#import "SpringButton.h"
#import "SpringTextField.h"
#import "SpringComboBox.h"

@implementation SpringSkinFactory

- (DPButton *)createButton
{
    return [[SpringButton alloc] init];
}

- (DPTextField *)createTextField
{
    return [[SpringTextField alloc] init];
}

- (DPComboBox *)createComboBox
{
    return [[SpringComboBox alloc] init];
}

@end
