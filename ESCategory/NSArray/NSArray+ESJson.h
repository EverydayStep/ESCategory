//
//  NSArray+ESJson.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (ESJson)

/**
 NSArray 转json字符串

 @return json字符串
 */
- (NSString *)es_jsonString;


/**
 json字符串转NSArray

 @param string json字符串
 @return array
 */
+ (NSArray *)es_arrayFromString:(NSString *)string;
@end
