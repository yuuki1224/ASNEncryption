//
//  ASNAESEncryption.h
//  ASNEncryptionDemo
//
//  Created by AsanoYuki on 2014/11/16.
//  Copyright (c) 2014年 AsanoYuki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASNAESEncryption : NSObject

+ (NSData *)aesEncryptedDataWithData:(NSData *)data key:(NSString *)key;
+ (NSData *)aesDecryptedDataWithData:(NSData *)data key:(NSString *)key;

@end
