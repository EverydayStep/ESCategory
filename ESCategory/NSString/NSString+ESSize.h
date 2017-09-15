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
 获取字符串size

 @param font 字体
 @param size 字体范围
 @param paragraphStyle 段落样式
 @return 字符串size
 */
- (CGSize)es_sizeWithFont:(UIFont *)font size:(CGSize)size paragraphStyle:(NSParagraphStyle *)paragraphStyle;

/**
 获取字符串的高度
 
 @param font 字体
 @param width 宽度
 @return 字符串高度
 */
- (CGFloat)es_heightWithFont:(UIFont *)font width:(CGFloat)width;

/**
 获取字符串的高度
 
 @param font 字体
 @param width 宽度
 @param linespace 行间距
 @param lineBrekMode 分行模式
 @return 字符串高度
 */
- (CGFloat)es_heightWithFont:(UIFont *)font width:(CGFloat)width linespace:(CGFloat)linespace mode:(NSLineBreakMode)lineBrekMode;

/**
 获取字符串的宽度
 
 @param font 字体
 @param height 高度
 @return 字符串宽度
 */
- (CGFloat)es_widthWithFont:(UIFont *)font height:(CGFloat)height;

/**
 获取字符串的宽度
 
 @param font 字体
 @param height 高度
 @param linespace 行间距
 @param lineBrekMode 分行模式
 @return 字符串宽度
 */
- (CGFloat)es_widthWithFont:(UIFont *)font height:(CGFloat)height linespace:(CGFloat)linespace mode:(NSLineBreakMode)lineBrekMode;
@end
