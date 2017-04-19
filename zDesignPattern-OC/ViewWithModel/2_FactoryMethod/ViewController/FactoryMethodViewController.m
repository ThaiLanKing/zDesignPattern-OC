//
//  FactoryMethodViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/19.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "FactoryMethodViewController.h"
#import "FileLoggerFactory.h"
#import "DataBaseLoggerFactory.h"

@interface FactoryMethodViewController ()

@end

@implementation FactoryMethodViewController

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
    LoggerFactory *factory;
    Logger *logger;
    
    //可以设计为读取配置文件进行日志记录
//    factory = [[FileLoggerFactory alloc] init];
    factory = [[DataBaseLoggerFactory alloc] init];
    
    logger = factory.createLogger;
    [logger writeLog];
    
    //优化：隐藏工厂方法
    //此时在工厂类中直接调用产品类的业务方法，客户端无须调用工厂方法创建产品，直接通过工厂即可使用所创建的对象中的业务方法。
}

@end
