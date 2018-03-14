//
//  NSString+ESRegular.h
//  ESCategory
//
//  Created by codeLocker on 2018/3/14.
//  Copyright © 2018年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ESRegular)
/**
 是否是合法中国手机号码

 @return YES:合法 NO:不合法
 */
- (BOOL)es_isChinaPhoneNumber;
/**
 是否是合法中国移动手机号码
 
 @return YES:合法 NO:不合法
 */
- (BOOL)es_isChinaMobilePhoneNumber;
/**
 是否是合法中国电信手机号码
 
 @return YES:合法 NO:不合法
 */
- (BOOL)es_isChinaTelecomPhoneNumber;
/**
 是否是合法中国连通手机号码
 
 @return YES:合法 NO:不合法
 */
- (BOOL)es_isChinaUnicomPhoneNumber;

@end
