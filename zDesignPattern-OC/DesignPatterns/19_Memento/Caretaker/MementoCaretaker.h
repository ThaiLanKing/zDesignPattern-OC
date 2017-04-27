//
//  MementoCaretaker.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/27.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChessmanMemento.h"
#import "DPChessman.h"

@interface MementoCaretaker : NSObject

- (ChessmanMemento *)getMemento:(NSInteger)index;
- (void)setMemento:(ChessmanMemento *)memento;

@end
