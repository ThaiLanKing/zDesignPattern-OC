//
//  IgoChessmanFactory.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BlackIgoChessman.h"
#import "WhiteIgoChessman.h"

@interface IgoChessmanFactory : NSObject

+ (IgoChessmanFactory *)sharedInstance;

- (IgoChessman *)getIgoChessman:(NSString *)color;

@end
