//
//  ViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/9.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "HomeViewController.h"
#import "DesignPatternModel.h"

#define kScreenWidth ([UIScreen mainScreen].bounds.size.width)
#define kScreenHeight ([UIScreen mainScreen].bounds.size.height)

@interface HomeViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *designPatternListCollectionView;

@property (nonatomic, strong) NSArray *designPatternList;

@property (nonatomic, strong) DesignPatternModel *dpModel;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"设计模式";
    
    [self.view addSubview:self.designPatternListCollectionView];
    
    self.designPatternList = self.dpModel.designPatternList;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - set/get

- (UICollectionView *)designPatternListCollectionView
{
    if (!_designPatternListCollectionView) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.minimumLineSpacing = 0;
        layout.minimumInteritemSpacing = 0;
        layout.scrollDirection = UICollectionViewScrollDirectionVertical;
        layout.itemSize = CGSizeMake(kScreenWidth, 44);
        
        _designPatternListCollectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
        _designPatternListCollectionView.delegate = self;
        _designPatternListCollectionView.dataSource = self;
    }
    return _designPatternListCollectionView;
}

- (DesignPatternModel *)dpModel
{
    if (!_dpModel) {
        _dpModel = [[DesignPatternModel alloc] init];
    }
    return _dpModel;
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return [self.dpModel.designPatternList count];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSInteger itemNum = 0;
    NSArray *certainTypeDesignPatterns = self.dpModel.designPatternList[section][DesignPatternsKey];
    itemNum = [certainTypeDesignPatterns count];
    return itemNum;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{

}

#pragma mark - UICollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{

}

@end
