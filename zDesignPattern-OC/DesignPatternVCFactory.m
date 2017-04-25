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
#import "AbstractFactoryViewController.h"
#import "SingletonViewController.h"
#import "PrototypeViewController.h"
#import "BuilderViewController.h"
#import "AdapterViewController.h"
#import "BridgeViewController.h"
#import "CompositeViewController.h"
#import "DecoratorViewController.h"
#import "FacadeViewController.h"
#import "FlyweightViewController.h"
#import "ProxyViewController.h"
#import "ChainOfResponsibilityViewController.h"
#import "CommandViewController.h"
#import "InterpreterViewController.h"

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
    else if ([patternChineseName isEqualToString:@"抽象工厂模式"]) {
        designPatternVC = [[AbstractFactoryViewController alloc] init];
    }
    else if ([patternChineseName isEqualToString:@"单例模式"]) {
        designPatternVC = [[SingletonViewController alloc] init];
    }
    else if ([patternChineseName isEqualToString:@"原型模式"]) {
        designPatternVC = [[PrototypeViewController alloc] init];
    }
    else if ([patternChineseName isEqualToString:@"建造者模式"]) {
        designPatternVC = [[BuilderViewController alloc] init];
    }
    else if ([patternChineseName isEqualToString:@"适配器模式"]) {
        designPatternVC = [[AdapterViewController alloc] init];
    }
    else if ([patternChineseName isEqualToString:@"桥接模式"]) {
        designPatternVC = [[BridgeViewController alloc] init];
    }
    else if ([patternChineseName isEqualToString:@"组合模式"]) {
        designPatternVC = [[CompositeViewController alloc] init];
    }
    else if ([patternChineseName isEqualToString:@"装饰模式"]) {
        designPatternVC = [[DecoratorViewController alloc] init];
    }
    else if ([patternChineseName isEqualToString:@"外观模式"]) {
        designPatternVC = [[FacadeViewController alloc] init];
    }
    else if ([patternChineseName isEqualToString:@"享元模式"]) {
        designPatternVC = [[FlyweightViewController alloc] init];
    }
    else if ([patternChineseName isEqualToString:@"代理模式"]) {
        designPatternVC = [[ProxyViewController alloc] init];
    }
    else if ([patternChineseName isEqualToString:@"职责链模式"]) {
        designPatternVC = [[ChainOfResponsibilityViewController alloc] init];
    }
    else if ([patternChineseName isEqualToString:@"命令模式"]) {
        designPatternVC = [[CommandViewController alloc] init];
    }
    else if ([patternChineseName isEqualToString:@"解释器模式"]) {
        designPatternVC = [[InterpreterViewController alloc] init];
    }
    
    if (designPatternVC) {
        designPatternVC.navigationItem.title = patternChineseName;
    }

    return designPatternVC;
}

@end
