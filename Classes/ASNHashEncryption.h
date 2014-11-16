//
//  ASNHashEncryption.h
//  ASNEncryptionDemo
//
//  Created by AsanoYuki on 2014/11/16.
//  Copyright (c) 2014年 AsanoYuki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASNHashEncryption : NSObject

+ (NSString *)sha1:(NSString *)message;
+ (NSString *)md5:(NSString *)message;

@end
