//
//  NSNumber+ESFormat.h
//  ESCategory
//
//  Created by codeLocker on 2017/9/15.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (ESFormat)

/**
 NSNumber转换成指定格式字符串

 @param style 格式类型
     NSNumberFormatterNoStyle 四舍五入的整数
     NSNumberFormatterDecimalStyle 小数形式
     NSNumberFormatterCurrencyStyle 本地化货币 $100
     NSNumberFormatterPercentStyle 百分数形式 100.1
     NSNumberFormatterScientificStyle 科学计数方式 10.1%
     NSNumberFormatterSpellOutStyle 朗读形式 100 = 一百
     NSNumberFormatterOrdinalStyle 序数 100th
     NSNumberFormatterCurrencyISOCodeStyle USD100
     NSNumberFormatterCurrencyPluralStyle 100人民币
     NSNumberFormatterCurrencyAccountingStyle $100
 @param minimumIntegerDigits 整数最少位数 -1:不设置
 @param maximumIntegerDigits 整数最多位数 -1:不设置
 @param minimumFractionDigits 小数最少位数 -1:不设置
 @param maximumFractionDigits 小数最多位数 -1:不设置
 @return String
 */
- (NSString *)es_stringForStype:(NSNumberFormatterStyle)style minimumIntegerDigits:(NSInteger)minimumIntegerDigits maximumIntegerDigits:(NSInteger)maximumIntegerDigits minimumFractionDigits:(NSInteger)minimumFractionDigits maximumFractionDigits:(NSInteger)maximumFractionDigits;

/**
 NSNumber转换成指定格式字符串

 @param format 格式
 @return String
 */
- (NSString *)es_stringWithFormat:(NSNumberFormatter *)format;

/**
 货币代码

 @return String
 */
+ (NSString *)currencyCode;

/**
 货币符号
 
 @return String
 */
+ (NSString *)currencySymbol;

/**
 国际货币符号
 
 @return String
 */
+ (NSString *)internationalCurrencySymbol;

/**
 百分比符号
 
 @return String
 */
+ (NSString *)percentSymbol;

/**
 千分号符号
 
 @return String
 */
+ (NSString *)perMillSymbol;

/**
 减号符号
 
 @return String
 */
+ (NSString *)minusSign;

/**
 加号符号
 
 @return String
 */
+ (NSString *)plusSign;

/**
 指数符号
 
 @return String
 */
+ (NSString *)exponentSymbol;
@end
