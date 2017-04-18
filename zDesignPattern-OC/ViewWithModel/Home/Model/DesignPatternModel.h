//
//  DesignPatternModel.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/17.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, kDesignType) {
    kDesignTypeCreate,    //创建型
    kDesignTypeStructure, //结构型
    kDesignTypeBehaviour, //行为型
};

@interface DesignPatternModel : NSObject

@property (nonatomic, assign) kDesignType patternType;

/**
 对象行为型、类创建型
 */
@property (nonatomic, copy) NSString *patternTypeDescription;

/**
 模式中文名
 */
@property (nonatomic, copy) NSString *patternChineseName;

/**
 模式英文名
 */
@property (nonatomic, copy) NSString *patternEnglishName;

/**
 学习难度，1-5
 */
@property (nonatomic, assign) NSInteger studyDifficulty;

/**
 使用频率, 1-5
 */
@property (nonatomic, assign) NSInteger useFrequency;

@end
