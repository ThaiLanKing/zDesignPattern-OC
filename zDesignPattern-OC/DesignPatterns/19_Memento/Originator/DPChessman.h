//
//  DPChessman.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ChessmanMemento;

@interface DPChessman : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic, assign) NSInteger x;
@property (nonatomic, assign) NSInteger y;

- (instancetype)initWithTitle:(NSString *)title
                            x:(NSInteger)x
                            y:(NSInteger)y;

- (ChessmanMemento *)save;
- (void)restore:(ChessmanMemento *)memento;

@end
