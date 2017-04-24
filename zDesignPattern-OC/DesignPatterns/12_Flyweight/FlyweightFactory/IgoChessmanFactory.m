//
//  IgoChessmanFactory.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "IgoChessmanFactory.h"

static IgoChessmanFactory *sharedInstance = nil;

@interface IgoChessmanFactory ()

@property (nonatomic, strong) NSMutableDictionary *chessmanDic;

@end

@implementation IgoChessmanFactory

- (instancetype)init
{
    if (self = [super init]) {
        _chessmanDic = [NSMutableDictionary dictionaryWithCapacity:0];
        IgoChessman *black, *white;
        black = [BlackIgoChessman new];
        [_chessmanDic setObject:black forKey:@"b"];
        white = [WhiteIgoChessman new];
        [_chessmanDic setObject:white forKey:@"w"];
    }
    return self;
}

+ (IgoChessmanFactory *)sharedInstance
{
    if (!sharedInstance) {
        sharedInstance = [[IgoChessmanFactory alloc] init];
    }
    return sharedInstance;
}

- (IgoChessman *)getIgoChessman:(NSString *)color
{
    return self.chessmanDic[color];
}

@end
