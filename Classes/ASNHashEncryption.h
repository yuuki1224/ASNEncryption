//
//  ASNHashEncryption.h
//  ASNEncryptionDemo
//
//  Created by AsanoYuki on 2014/11/16.
//  Copyright (c) 2014年 AsanoYuki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASNHashEncryption : NSObject

+ (NSString *)md2WithString:(NSString *)message;
+ (NSString *)md2WithData:(NSData *)message;

+ (NSString *)md4WithString:(NSString *)message;
+ (NSString *)md4WithData:(NSData *)message;

+ (NSString *)md5WithString:(NSString *)message;
+ (NSString *)md5WithData:(NSData *)message;

+ (NSString *)sha1:(NSString *)message;

// TODO:SHA224
+ (NSString *)sha224:(NSString *)message;

// TODO:SHA256
+ (NSString *)sha256:(NSString *)message;

// TODO:SHA384
+ (NSString *)sha384:(NSString *)message;

// TODO:SHA512
+ (NSString *)sha512:(NSString *)message;

@end
