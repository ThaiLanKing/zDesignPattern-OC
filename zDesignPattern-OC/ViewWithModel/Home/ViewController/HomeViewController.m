//
//  ViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/9.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "HomeViewController.h"
#import "DesignPatternModel.h"
#import "DesignPatternCollectionViewCell.h"
#import "DesignPatternHeaderCollectionReusableView.h"
#import "DesignPatternVCFactory.h"

#define kScreenWidth ([UIScreen mainScreen].bounds.size.width)
#define kScreenHeight ([UIScreen mainScreen].bounds.size.height)

@interface HomeViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *designPatternListCollectionView;

@property (nonatomic, copy) NSArray *designPatternList;

@property (nonatomic, strong) DesignPatternModel *dpModel;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"设计模式";
    
    self.designPatternList = [DesignPatternModel parseDesignPatternPlistFile];
    
    [self.view addSubview:self.designPatternListCollectionView];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.designPatternListCollectionView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    self.designPatternListCollectionView.frame = self.view.bounds;
}

#pragma mark - set/get

- (UICollectionView *)designPatternListCollectionView
{
    if (!_designPatternListCollectionView) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.minimumLineSpacing = 1;
        layout.minimumInteritemSpacing = 0;
        layout.scrollDirection = UICollectionViewScrollDirectionVertical;
        layout.itemSize = CGSizeMake(kScreenWidth, 65);
        layout.headerReferenceSize = CGSizeMake(kScreenWidth, 40);
        layout.sectionInset = UIEdgeInsetsMake(0, 0, 10, 0);
        
        _designPatternListCollectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
        _designPatternListCollectionView.backgroundColor = [UIColor lightGrayColor];
        _designPatternListCollectionView.delegate = self;
        _designPatternListCollectionView.dataSource = self;
        [_designPatternListCollectionView registerClass:[DesignPatternCollectionViewCell class] forCellWithReuseIdentifier:NSStringFromClass([DesignPatternCollectionViewCell class])];
        [_designPatternListCollectionView registerClass:[DesignPatternHeaderCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:NSStringFromClass([DesignPatternHeaderCollectionReusableView class])];
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
    return [self.designPatternList count];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSInteger itemNum = 0;
    NSArray *certainTypeDesignPatterns = self.designPatternList[section][DesignPatternsKey];
    itemNum = [certainTypeDesignPatterns count];
    return itemNum;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    DesignPatternCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([DesignPatternCollectionViewCell class]) forIndexPath:indexPath];
    
    cell.dpViewModel = self.designPatternList[indexPath.section][DesignPatternsKey][indexPath.row];
    
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    if ([kind isEqualToString:UICollectionElementKindSectionFooter]) {
        return nil;
    }
    
    DesignPatternHeaderCollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:NSStringFromClass([DesignPatternHeaderCollectionReusableView class]) forIndexPath:indexPath];
    headerView.titleLbl.text = self.designPatternList[indexPath.section][DesignPatternTypeKey];
    
    return headerView;
}

#pragma mark - UICollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    DesignPatternViewModel *viewModel = self.designPatternList[indexPath.section][DesignPatternsKey][indexPath.row];
    DesignPatternModel *designPatternModel = viewModel.designPatternModel;
    zDesignPatternBaseViewController *designPatternVC = [DesignPatternVCFactory designPatternViewControllerNamed:designPatternModel.patternChineseName];
    if (!designPatternVC) {
        NSString *msg = [NSString stringWithFormat:@"尚未实现%@", designPatternModel.patternChineseName];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"提示" message:msg preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        [alertVC addAction:okAction];
        [self presentViewController:alertVC animated:YES completion:nil];
        return;
    }
    [designPatternVC testDesignPattern];
    [self.navigationController pushViewController:designPatternVC animated:YES];
}

@end
