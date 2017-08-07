//
//  NSString+ESSize.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (ESSize)

/**
 获取字符串的高度(无行间距)

 @param font 字体
 @param width 宽度
 @param lineBrekMode 分行模式
 @return 字符串高度
 */
- (CGFloat)es_heightWithFont:(UIFont *)font width:(CGFloat)width mode:(NSLineBreakMode)lineBrekMode;

/**
 获取字符串的高度(有行间距)

 @param font 字体
 @param width 宽度
 @param linespace 行间距
 @param lineBrekMode 分行模式
 @return 字符串高度
 */
- (CGFloat)es_heightWithFont:(UIFont *)font width:(CGFloat)width linespace:(CGFloat)linespace mode:(NSLineBreakMode)lineBrekMode;

/**
 获取字符串的宽度(无行间距)

 @param font 字体
 @param height 高度
 @param lineBrekMode 分行模式
 @return 字符串宽度
 */
- (CGFloat)es_widthWithFont:(UIFont *)font height:(CGFloat)height mode:(NSLineBreakMode)lineBrekMode;

/**
 获取字符串的宽度(有行间距)

 @param font 字体
 @param height 高度
 @param linespace 行间距
 @param lineBrekMode 分行模式
 @return 字符串宽度
 */
- (CGFloat)es_widthWithFont:(UIFont *)font height:(CGFloat)height linespace:(CGFloat)linespace mode:(NSLineBreakMode)lineBrekMode;
@end
