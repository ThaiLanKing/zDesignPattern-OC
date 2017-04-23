//
//  CompositeViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/23.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "CompositeViewController.h"
#import "DPFolder.h"
#import "DPTextFile.h"
#import "DPVideoFile.h"
#import "DPImageFile.h"

@interface CompositeViewController ()

@end

@implementation CompositeViewController

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
    AbstractFile *file1, *file2, *file3, *file4, *file5;
    AbstractFile *folder1, *folder2, *folder3, *folder4;
    
    folder1 = [[DPFolder alloc] initWithName:@"Tonny的资料"];
    folder2 = [[DPFolder alloc] initWithName:@"图像文件"];
    folder3 = [[DPFolder alloc] initWithName:@"文本文件"];
    folder4 = [[DPFolder alloc] initWithName:@"视频文件"];
    
    file1 = [[DPImageFile alloc] initWithName:@"小龙女.jpg"];
    file2 = [[DPImageFile alloc] initWithName:@"张无忌.gif"];
    file3 = [[DPTextFile alloc] initWithName:@"九阴真经.txt"];
    file4 = [[DPTextFile alloc] initWithName:@"葵花宝典.doc"];
    file5 = [[DPVideoFile alloc] initWithName:@"笑傲江湖.rmvb"];
    
    [folder2 add:file1];
    [folder2 add:file2];
    [folder3 add:file3];
    [folder3 add:file4];
    [folder4 add:file5];
    [folder1 add:folder2];
    [folder1 add:folder3];
    [folder1 add:folder4];
    
    [folder1 killVirus];
}

@end
