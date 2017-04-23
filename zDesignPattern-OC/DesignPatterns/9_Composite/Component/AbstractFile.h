//
//  AbstractFile.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/23.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstractFile : NSObject
{
    NSString *_name;
}

- (instancetype)initWithName:(NSString *)name;

- (void)add:(AbstractFile *)file;
- (void)remove:(AbstractFile *)file;
- (AbstractFile *)getChild:(NSInteger)i;
- (void)killVirus;

@end
