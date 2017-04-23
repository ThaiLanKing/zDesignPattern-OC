//
//  DPImage.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/23.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPImageImp.h"

@interface DPImage : NSObject
{
    DPImageImp *_imgImp;
}

- (void)setImageImp:(DPImageImp *)imgImp;

- (void)parseFile:(NSString *)fileName;

@end
