//
//  main.m
//  ASNEncryptionDemo
//
//  Created by AsanoYuki on 2014/11/16.
//  Copyright (c) 2014年 AsanoYuki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASNEncryption.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *encyptedString = [ASNHashEncryption sha1:@"asanoyuki"];
    }
    return 0;
}
