//
//  DesignPatternVCFactory.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/19.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DesignPatternVCFactory.h"
#import "SimpleFactoryViewController.h"
#import "FactoryMethodViewController.h"

@implementation DesignPatternVCFactory

+ (zDesignPatternBaseViewController *)designPatternViewControllerNamed:(NSString *)patternChineseName
{
    if (patternChineseName.length == 0) {
        return nil;
    }
    
    zDesignPatternBaseViewController *designPatternVC = nil;
    if ([patternChineseName isEqualToString:@"简单工厂模式"]) {
        designPatternVC = [[SimpleFactoryViewController alloc] init];
    }
    else if ([patternChineseName isEqualToString:@"工厂方法模式"]) {
        designPatternVC = [[FactoryMethodViewController alloc] init];
    }
    
    if (designPatternVC) {
        designPatternVC.navigationItem.title = patternChineseName;
    }

    return designPatternVC;
}

@end
