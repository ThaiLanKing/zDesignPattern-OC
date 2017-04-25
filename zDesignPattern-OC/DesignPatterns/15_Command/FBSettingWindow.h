//
//  FBSettingWindow.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FunctionButton.h"

@interface FBSettingWindow : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) NSMutableArray *functionButtons;

- (instancetype)initWithTitle:(NSString *)title;

- (void)addFunctionButton:(FunctionButton *)fb;
- (void)removeFunctionButton:(FunctionButton *)fb;

- (void)display;

@end
