//
//  DesignPatternModel.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/17.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DesignPatternModel.h"

@implementation DesignPatternModel

- (instancetype)init
{
    if (self = [super init]) {
        
    
    }
    return self;
}

+ (NSArray *)parseDesignPatternPlistFile
{
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSString *plistFilePath = [mainBundle pathForResource:@"DesignPatternList" ofType:@"plist"];
    NSArray *designPatternList = [NSArray arrayWithContentsOfFile:plistFilePath];
    
    NSMutableArray *tempResult = [NSMutableArray arrayWithCapacity:0];
    for (NSDictionary *certainTypeDpDic in designPatternList) {
        [certainTypeDpDic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            if (![obj isKindOfClass:[NSArray class]]) {
                return;
            }
            
            kDesignType designType = kDesignTypeCreate;
            if ([key isEqualToString:@"创建型"]) {
                designType = kDesignTypeCreate;
            }
            else if ([key isEqualToString:@"结构型"]) {
                designType = kDesignTypeStructure;
            }
            else if ([key isEqualToString:@"行为型"]) {
                designType = kDesignTypeBehaviour;
            }
            
            NSMutableArray *certainTypeDpModels = [NSMutableArray arrayWithCapacity:0];
            for (NSDictionary *dpDic in (NSArray *)obj) {
                DesignPatternModel *dpModel = [[DesignPatternModel alloc] init];
                dpModel.patternType = designType;
                dpModel.patternTypeDescription = dpDic[@"patternTypeDescription"];
                dpModel.patternChineseName = dpDic[@"patternChineseName"];
                dpModel.patternEnglishName = dpDic[@"patternEnglishName"];
                dpModel.studyDifficulty = [dpDic[@"studyDifficulty"] integerValue];
                dpModel.useFrequency = [dpDic[@"useFrequency"] integerValue];
                
                DesignPatternViewModel *viewModel = [[DesignPatternViewModel alloc] initWithDesignPatternModel:dpModel];
                [certainTypeDpModels addObject:viewModel];
            }
            
            [tempResult addObject:@{DesignPatternTypeKey : key, DesignPatternsKey : certainTypeDpModels}];
        }];
        
    }
    
    return tempResult;
}

@end
