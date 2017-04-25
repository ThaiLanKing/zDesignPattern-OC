//
//  AndNode.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "AbstractNode.h"

@interface AndNode : AbstractNode

- (instancetype)initWithLeft:(AbstractNode *)left right:(AbstractNode *)right;

@end
