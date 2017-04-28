//
//  VisitorViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "VisitorViewController.h"
#import "FADepartment.h"
#import "HRDepartment.h"
#import "FulltimeEmployee.h"
#import "ParttimeEmployee.h"
#import "EmployeeList.h"

@interface VisitorViewController ()

@end

@implementation VisitorViewController

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
    EmployeeList *list = [EmployeeList new];
    Employee *fte1, *fte2, *fte3, *pte1, *pte2;
    
    fte1 = [[FulltimeEmployee alloc] initWithName:@"张无忌" weeklyWage:3200 workTime:45];
    fte2 = [[FulltimeEmployee alloc] initWithName:@"杨过" weeklyWage:2000 workTime:40];
    fte3 = [[FulltimeEmployee alloc] initWithName:@"段誉" weeklyWage:2400 workTime:38];
    
    pte1 = [[ParttimeEmployee alloc] initWithName:@"洪七公" hourWage:80 workTime:20];
    pte2 = [[ParttimeEmployee alloc] initWithName:@"郭靖" hourWage:60 workTime:18];
    
    [list addEmployee:fte1];
    [list addEmployee:fte2];
    [list addEmployee:fte3];
    [list addEmployee:pte1];
    [list addEmployee:pte2];
    
    Department *dep;
    dep = [FADepartment new];
    [list accept:dep];
    
    NSLog(@"------------------");
    
    dep = [HRDepartment new];
    [list accept:dep];
}

@end
