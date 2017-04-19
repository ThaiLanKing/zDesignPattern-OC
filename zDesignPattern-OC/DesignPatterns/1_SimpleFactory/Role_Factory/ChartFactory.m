//
//  ChartFactory.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/19.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "ChartFactory.h"
#import "HistogramChart.h"
#import "PieChart.h"

@implementation ChartFactory

+ (Chart *)chartOfType:(kChartType)chartType
{
    Chart *resultChart = nil;
    switch (chartType) {
        case kChartTypeHistogram:
            resultChart = [[HistogramChart alloc] init];
            break;
        case kChartTypePie:
            resultChart = [[PieChart alloc] init];
            break;
            
        default:
            break;
    }
    return resultChart;
}

@end
