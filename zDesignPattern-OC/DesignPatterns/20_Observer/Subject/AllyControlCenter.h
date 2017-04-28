//
//  AllyControlCenter.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/28.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Observer;

@interface AllyControlCenter : NSObject
{
    NSString *_allyName;
    NSMutableArray<Observer *> *_players;
}

- (void)join:(Observer *)obs;
- (void)quit:(Observer *)obs;

- (void)notifyObserver:(NSString *)name;

@end
