//
//  SkinFactory.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/19.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPButton.h"
#import "DPTextField.h"
#import "DPComboBox.h"

@interface SkinFactory : NSObject

- (DPButton *)createButton;
- (DPTextField *)createTextField;
- (DPComboBox *)createComboBox;

@end
