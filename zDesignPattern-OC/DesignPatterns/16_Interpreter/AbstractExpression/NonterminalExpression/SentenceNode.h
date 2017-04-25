//
//  SentenceNode.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/25.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "AbstractNode.h"

/**
 简单句子解释：非终结符表达式
 */
@interface SentenceNode : AbstractNode

- (instancetype)initWithDirection:(AbstractNode *)direction
                           action:(AbstractNode *)action
                         distance:(AbstractNode *)distance;

@end
