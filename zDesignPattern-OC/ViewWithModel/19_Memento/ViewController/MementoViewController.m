//
//  MementoViewController.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "MementoViewController.h"
#import "MementoCaretaker.h"

@interface MementoViewController ()
{
    NSInteger _index; //定义一个索引来记录当前状态的位置
    MementoCaretaker *_mc;
}

@end

@implementation MementoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testDesignPattern
{
    _index = -1;
    _mc = [MementoCaretaker new];
    
    DPChessman *chess = [[DPChessman alloc] initWithTitle:@"车" x:1 y:1];
    [self play:chess];
    chess.y = 4;
    [self play:chess];
    chess.x = 5;
    [self play:chess];
    [self undo:chess index:_index];
    [self undo:chess index:_index];
    [self redo:chess index:_index];
    [self redo:chess index:_index];
}

- (void)display:(DPChessman *)chess
{
    NSLog(@"棋子%@当前位置为：第%d行第%d列", chess.label, (int)chess.x, (int)chess.y);
}

- (void)play:(DPChessman *)chess
{
    [_mc setMemento:[chess save]];
    ++_index;
    [self display:chess];
}

- (void)undo:(DPChessman *)chess index:(NSInteger)i
{
    NSLog(@"****悔棋****");
    --_index;
    [chess restore:[_mc getMemento:i-1]];
    [self display:chess];
}

- (void)redo:(DPChessman *)chess index:(NSInteger)i
{
    NSLog(@"****撤销悔棋****");
    ++_index;
    [chess restore:[_mc getMemento:i+1]];
    [self display:chess];
}

@end
