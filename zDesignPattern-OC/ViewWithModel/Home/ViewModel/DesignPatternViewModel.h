//
//  DesignPatternViewModel.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/11.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DesignPatternModel;

@interface DesignPatternViewModel : NSObject

@property (nonatomic, strong) DesignPatternModel *designPatternModel;

@property (nonatomic, copy) NSString *designPatternName;
@property (nonatomic, copy) NSString *designPatternDescription;

@end
