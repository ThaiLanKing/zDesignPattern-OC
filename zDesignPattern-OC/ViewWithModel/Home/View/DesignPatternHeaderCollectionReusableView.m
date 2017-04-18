//
//  DesignPatternHeaderCollectionReusableView.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/18.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DesignPatternHeaderCollectionReusableView.h"

@implementation DesignPatternHeaderCollectionReusableView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        
        _titleLbl = [[UILabel alloc] initWithFrame:CGRectMake(22, 10, 280, 20)];
        _titleLbl.font = [UIFont boldSystemFontOfSize:17];
        _titleLbl.textColor = [UIColor blackColor];
        [self addSubview:_titleLbl];
    }
    return self;
}

@end
