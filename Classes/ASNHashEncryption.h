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

+ (NSString *)sha1WithString:(NSString *)message;
+ (NSString *)sha1WithData:(NSData *)message;

+ (NSString *)sha224WithString:(NSString *)message;
+ (NSString *)sha224WithData:(NSData *)message;

+ (NSString *)sha256WithString:(NSString *)message;
+ (NSString *)sha256WithData:(NSData *)message;

+ (NSString *)sha384WithString:(NSString *)message;
+ (NSString *)sha384WithData:(NSData *)message;

+ (NSString *)sha512WithString:(NSString *)message;
+ (NSString *)sha512WithData:(NSData *)message;

@end
