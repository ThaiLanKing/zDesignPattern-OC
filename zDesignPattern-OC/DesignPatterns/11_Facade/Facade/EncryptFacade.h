//
//  EncryptFacade.h
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPFileReader.h"
#import "DPCipherMachine.h"
#import "DPFileWriter.h"

@interface EncryptFacade : NSObject

- (void)fileEncrypt:(NSString *)fileNameSrc toName:(NSString *)fileNameDst;

@end
