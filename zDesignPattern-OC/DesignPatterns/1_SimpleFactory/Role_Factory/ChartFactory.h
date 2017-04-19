//
//  ChartFactory.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/19.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Chart.h"

typedef NS_ENUM(NSUInteger, kChartType) {
    kChartTypeHistogram,
    kChartTypePie,
};

@interface ChartFactory : NSObject

+ (Chart *)chartOfType:(kChartType)chartType;

@end
