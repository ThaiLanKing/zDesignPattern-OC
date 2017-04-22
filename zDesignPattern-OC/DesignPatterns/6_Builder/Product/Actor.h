//
//  Actor.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/22.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Actor : NSObject

@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *sex;
@property (nonatomic, copy) NSString *face;
@property (nonatomic, copy) NSString *costume;
@property (nonatomic, copy) NSString *hairStyle;

- (void)description;

@end
