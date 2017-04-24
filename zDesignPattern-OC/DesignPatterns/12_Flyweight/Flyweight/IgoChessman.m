//
//  IgoChessman.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "IgoChessman.h"

@implementation IgoChessman

- (void)display
{
    NSLog(@"棋子颜色：%@", [self getColor]);
}

- (void)display:(DPCoordinates *)coord
{
    NSString *chessColor = [NSString stringWithFormat:@"棋子颜色：%@", [self getColor]];
    NSString *chessCoord = [NSString stringWithFormat:@"棋子位置：(%d, %d)", (int)coord.x, (int)coord.y];
    NSLog(@"%@, %@", chessColor, chessCoord);
}

@end
