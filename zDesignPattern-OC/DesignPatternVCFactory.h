//
//  DesignPatternVCFactory.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/19.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "zDesignPatternBaseViewController.h"

@interface DesignPatternVCFactory : NSObject

+ (zDesignPatternBaseViewController *)designPatternViewControllerNamed:(NSString *)patternChineseName;

@end
