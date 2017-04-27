//
//  ConcreteMediator.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ConcreteMediator.h"

@implementation ConcreteMediator

- (void)componentChanged:(DPMComponent *)c
{
    if (c == _addButton) {
        NSLog(@"--单击增加按钮--");
        [_list update];
        [_cb update];
        [_userNameTxtBox update];
    }
    else if (c == _list) {
        NSLog(@"--从列表框选择客户--");
        [_cb select];
        [_userNameTxtBox setText];
    }
    else if (c == _cb){
        NSLog(@"--从组合框选择客户--");
        [_cb select];
        [_userNameTxtBox setText];
    }
}

@end
