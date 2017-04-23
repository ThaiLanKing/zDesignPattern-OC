//
//  DPPNGImage.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/23.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPPNGImage.h"

@implementation DPPNGImage

- (void)parseFile:(NSString *)fileName
{
    DPMatrix *m = [DPMatrix new];
    [self->_imgImp doPaint:m];
    NSLog(@"%@, 格式为PNG", fileName);
}

@end
