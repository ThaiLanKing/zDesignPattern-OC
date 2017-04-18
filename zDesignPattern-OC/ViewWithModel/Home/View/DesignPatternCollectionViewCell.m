//
//  DesignPatternCollectionViewCell.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/17.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "DesignPatternCollectionViewCell.h"

@interface DesignPatternCollectionViewCell ()

@property (nonatomic, strong) UILabel *nameLbl;
@property (nonatomic, strong) UILabel *descriptionLbl;

@end

@implementation DesignPatternCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        
        _nameLbl = [[UILabel alloc] initWithFrame:CGRectMake(22, 10, frame.size.width - 22 - 10, 20)];
        _nameLbl.font = [UIFont systemFontOfSize:15];
        _nameLbl.textColor = [UIColor blackColor];
        [self.contentView addSubview:_nameLbl];
        
        _descriptionLbl = [[UILabel alloc] initWithFrame:CGRectMake(22, 35, frame.size.width - 22 - 10, 20)];
        _descriptionLbl.font = [UIFont systemFontOfSize:15];
        _descriptionLbl.textColor = [UIColor blackColor];
        [self.contentView addSubview:_descriptionLbl];
    }
    return self;
}

- (void)setDpViewModel:(DesignPatternViewModel *)dpViewModel
{
    _dpViewModel = dpViewModel;
    
    _nameLbl.text = dpViewModel.designPatternName;
    _descriptionLbl.text = dpViewModel.designPatternDescription;
}

@end
