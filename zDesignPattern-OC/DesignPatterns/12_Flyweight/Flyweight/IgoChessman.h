//
//  IgoChessman.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPCoordinates.h"

@interface IgoChessman : NSObject

- (NSString *)getColor;

- (void)display;

- (void)display:(DPCoordinates *)coord;

@end
