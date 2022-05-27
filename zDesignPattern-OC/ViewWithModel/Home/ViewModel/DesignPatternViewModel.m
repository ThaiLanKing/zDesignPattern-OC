//
//  DesignPatternViewModel.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/11.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DesignPatternViewModel.h"
#import "DesignPatternModel.h"

NSString * const DesignPatternTypeKey = @"DesignPatternTypeKey";
NSString * const DesignPatternsKey = @"DesignPatternsKey";

@implementation DesignPatternViewModel

- (instancetype)initWithDesignPatternModel:(DesignPatternModel *)dpModel
{
    if (self = [super init]) {
        _designPatternModel = dpModel;
        
        _designPatternName = [NSString stringWithFormat:@"%@(%@)", dpModel.patternChineseName, dpModel.patternEnglishName];
        _designPatternDescription = [NSString stringWithFormat:@"学习难度：%d/5  使用频率：%d/5", (int)dpModel.studyDifficulty, (int)dpModel.useFrequency];
    }
    return self;
}

@end
