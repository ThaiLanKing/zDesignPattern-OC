//
//  DPCoordinates.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DPCoordinates : NSObject

@property (nonatomic, assign) NSInteger x;
@property (nonatomic, assign) NSInteger y;

- (instancetype)initWithX:(NSInteger)x Y:(NSInteger)y;

@end
