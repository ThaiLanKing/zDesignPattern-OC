//
//  DPJPGImage.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/23.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPJPGImage.h"

@implementation DPJPGImage

- (void)parseFile:(NSString *)fileName
{
    //模拟解析JPG文件并获得一个像素矩阵对象m
    DPMatrix *m = [DPMatrix new];
    [self->_imgImp doPaint:m];
    NSLog(@"%@, 格式为JPG", fileName);
}

@end
