//
//  DPGIFImage.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/23.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DPGIFImage.h"

@implementation DPGIFImage

- (void)parseFile:(NSString *)fileName
{
    DPMatrix *m = [DPMatrix new];
    [self->_imgImp doPaint:m];
    NSLog(@"%@, 格式为GIF", fileName);
}

@end
