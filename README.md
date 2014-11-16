#ASNEncryption
ASNEncryption is data encryption in cocoa.

```
NSString *encyptedString = [ASNHashEncryption md5WithString:@"helloworld"];
// fc5e038d38a57032085441e7fe7010b0
```

```Terminal
$md5 -s "helloworld"
=> MD5 ("helloworld") = fc5e038d38a57032085441e7fe7010b0
```

##Support
###AES(Advanced Encryption Standard)
###RSA
###hash
- md2, md4, md5
- sha1, sha224, sha256, sha384, sha512

##NSData base64 Encode/Decode
We can use the API that NSdata have to encode/decode by base64.

```objectivec
NSString *deviceTokenBase64 = [deviceToken base64EncodedStringWithOptions:0]; //default option
NSData* deviceTokenData = [[NSData alloc] initWithBase64Encoding:deviceTokenBase64];
```````

##base64とはなんですか?
64種類の英数字のみでマルチバイト文字やバイナリファイルなどを表現する.
A-Z, a-z, 0-9, +/=で表現される.

主に電子メールで使用され、画像/音声は、バイナリファイルでそのままでは、送受信できない。テキストファイルに変換する必要がある.
