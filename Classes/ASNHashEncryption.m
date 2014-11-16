//
//  ASNHashEncryption.m
//  ASNEncryptionDemo
//
//  Created by AsanoYuki on 2014/11/16.
//  Copyright (c) 2014年 AsanoYuki. All rights reserved.
//

#import "ASNHashEncryption.h"
#import <CommonCrypto/CommonDigest.h>

@implementation ASNHashEncryption

+ (NSString *)sha1:(NSString *)message {
    const char *cstr = [message cStringUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [NSData dataWithBytes:cstr length:message.length];
    
    uint8_t digest[CC_SHA1_DIGEST_LENGTH];
    
    CC_SHA1(data.bytes, data.length, digest);
    
    NSMutableString* output= [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
        [output appendFormat:@"%02x", digest[i]];
    }
    
    return output;
}

+ (NSString *)md5:(NSString *)message {
    const char *cStr = [message UTF8String];
    unsigned char digest[16];
    CC_MD5(cStr, strlen(cStr), digest); // This is the md5 call
    
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [output appendFormat:@"%02x", digest[i]];
    }
    
    return output;
}

@end
