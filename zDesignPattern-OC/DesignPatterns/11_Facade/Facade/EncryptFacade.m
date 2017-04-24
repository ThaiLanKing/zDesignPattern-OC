//
//  EncryptFacade.m
//  zDesignPattern-OC
//
//  Created by zyh on 17/4/24.
//  Copyright © 2017年 zyh. All rights reserved.
//

#import "EncryptFacade.h"

@interface EncryptFacade ()

@property (nonatomic, strong) DPFileReader *fileReader;
@property (nonatomic, strong) DPCipherMachine *cipher;
@property (nonatomic, strong) DPFileWriter *fileWriter;

@end

@implementation EncryptFacade

- (instancetype)init
{
    if (self = [super init]) {
        _fileReader = [[DPFileReader alloc] init];
        _cipher = [[DPCipherMachine alloc] init];
        _fileWriter = [[DPFileWriter alloc] init];
    }
    return self;
}

- (void)fileEncrypt:(NSString *)fileNameSrc toName:(NSString *)fileNameDst
{
    NSString *plainStr = [_fileReader Read:fileNameSrc];
    NSString *encryptStr = [_cipher Encrypt:plainStr];
    [_fileWriter write:encryptStr useName:fileNameDst];
}

@end
