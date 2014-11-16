//
//  ASNHashEncryption.m
//  ASNEncryptionDemo
//
//  Created by AsanoYuki on 2014/11/16.
//  Copyright (c) 2014年 AsanoYuki. All rights reserved.
//

#import "ASNHashEncryption.h"
#import <CommonCrypto/CommonDigest.h>

static NSString *digestMD2(const char* cstr)
{
    unsigned char digest[CC_MD2_DIGEST_LENGTH];
    CC_MD2(cstr, (unsigned int)strlen(cstr), digest);
    
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD2_DIGEST_LENGTH* 2];
    
    for(int i = 0; i < CC_MD2_DIGEST_LENGTH; i++) {
        [output appendFormat:@"%02x", digest[i]];
    }
    
    return output;
}

static NSString *digestMD4(const char* cstr)
{
    unsigned char digest[CC_MD4_DIGEST_LENGTH];
    CC_MD4(cstr, (unsigned int)strlen(cstr), digest);
    
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD4_DIGEST_LENGTH* 2];
    
    for(int i = 0; i < CC_MD4_DIGEST_LENGTH; i++) {
        [output appendFormat:@"%02x", digest[i]];
    }
    
    return output;
}

static NSString *digestMD5(const char* cstr)
{
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cstr, (unsigned int)strlen(cstr), digest);
    
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [output appendFormat:@"%02x", digest[i]];
    }
    
    return output;
}

static NSString *digestSHA(NSString *message, int digestLength)
{
    const char* cStr = [message UTF8String];
    uint8_t digest[digestLength];
    switch (digestLength) {
        case CC_SHA1_DIGEST_LENGTH:
            CC_SHA1(cStr, (unsigned int)strlen(cStr), digest);
            break;
        case CC_SHA224_DIGEST_LENGTH:
            CC_SHA224(cStr, (unsigned int)strlen(cStr), digest);
            break;
        case CC_SHA256_DIGEST_LENGTH:
            CC_SHA256(cStr, (unsigned int)strlen(cStr), digest);
            break;
        case CC_SHA384_DIGEST_LENGTH:
            CC_SHA384(cStr, (unsigned int)strlen(cStr), digest);
            break;
        case CC_SHA512_DIGEST_LENGTH:
            CC_SHA512(cStr, (unsigned int)strlen(cStr), digest);
            break;
    }
    NSMutableString *output= [NSMutableString stringWithCapacity:digestLength * 2];
    for(int i = 0; i < digestLength; i++) {
        [output appendFormat:@"%02x", digest[i]];
    }
    
    return output;
}

@implementation ASNHashEncryption

+ (NSString *)md2WithString:(NSString *)message
{
    const char *cStr = [message UTF8String];
    return digestMD2(cStr);
}

+ (NSString *)md2WithData:(NSData *)message
{
    const char *cStr = [message bytes];
    return digestMD2(cStr);
}

+ (NSString *)md4WithString:(NSString *)message
{
    const char *cStr = [message UTF8String];
    return digestMD4(cStr);
}

+ (NSString *)md4WithData:(NSData *)message
{
    const char *cStr = [message bytes];
    return digestMD4(cStr);
}

+ (NSString *)md5WithString:(NSString *)message
{
    const char *cStr = [message UTF8String];
    return digestMD5(cStr);
}

+ (NSString *)md5WithData:(NSData *)message
{
    const char *cStr = [message bytes];
    return digestMD5(cStr);
}

+ (NSString *)sha1:(NSString *)message
{
    return digestSHA(message, CC_SHA1_DIGEST_LENGTH);
}

+ (NSString *)sha224:(NSString *)message
{
    return digestSHA(message, CC_SHA224_DIGEST_LENGTH);
}

+ (NSString *)sha256:(NSString *)message
{
    return digestSHA(message, CC_SHA256_DIGEST_LENGTH);
}

+ (NSString *)sha384:(NSString *)message
{
    return digestSHA(message, CC_SHA384_DIGEST_LENGTH);
}

+ (NSString *)sha512:(NSString *)message
{
    return digestSHA(message, CC_SHA512_DIGEST_LENGTH);
}

@end
