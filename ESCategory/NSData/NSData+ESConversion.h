//
//  NSData+ESConversion.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (ESConversion)
/** 十六进制字符串 */
@property (nonatomic, strong, readonly) NSString *es_hexadecimal;

/**
 NSData -> NSDictionary

 @return NSDictionary
 */
- (NSDictionary *)dictionary;

/**
 NSData -> NSDictionary

 @param option  NSJSONReadingMutableContainers 可变字典或者数组
                NSJSONReadingMutableLeaves 可变字符串
                NSJSONReadingAllowFragments 所有的都是不可变的
 @return NSDictionary
 */
- (NSDictionary *)dictionaryWithOption:(NSJSONReadingOptions)option;

@end
