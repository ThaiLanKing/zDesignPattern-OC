//
//  AccessValidator.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AccessValidator : NSObject

- (BOOL)validate:(NSString *)userID;

@end
