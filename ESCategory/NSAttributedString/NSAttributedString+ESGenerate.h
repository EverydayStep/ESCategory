//
//  NSAttributedString+ESGenerate.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSAttributedString (ESGenerate)
- (NSAttributedString *)es_setColor:(UIColor *)color inRange:(NSRange)range;
- (NSAttributedString *)es_setFont:(UIFont *)font inRange:(NSRange)range;
- (NSAttributedString *)es_setBackgroundColor:(UIColor *)color inRange:(NSRange)range;
- (NSAttributedString *)es_setStrokeColor:(UIColor *)color strokeWidth:(CGFloat)width inRange:(NSRange)range;
- (NSAttributedString *)es_setShadow:(NSShadow *)shadow inRange:(NSRange)range;
- (NSAttributedString *)es_setDeleteLine:(NSUnderlineStyle)lineStyle color:(UIColor *)color inRange:(NSRange)range;
- (NSAttributedString *)es_setUnderLine:(NSUnderlineStyle)lineStyle color:(UIColor *)color inRange:(NSRange)range;
- (NSAttributedString *)es_setKern:(CGFloat)kern inRange:(NSRange)range;
- (NSAttributedString *)es_setParagraphStyle:(NSParagraphStyle *)paragraphStyle inRange:(NSRange)range;
- (NSAttributedString *)es_setLinespace:(CGFloat)linespace breakModel:(NSLineBreakMode)breakMode inRange:(NSRange)range;
- (NSAttributedString *)es_setEffect:(NSString *)effect inRange:(NSRange)range;
- (NSAttributedString *)es_setLigature:(BOOL)isLigature inRange:(NSRange)range;
- (NSAttributedString *)es_setObliqueness:(CGFloat)obliqueness inRange:(NSRange)range;
- (NSAttributedString *)es_setBaseLineOffset:(CGFloat)offset inRange:(NSRange)range;
- (NSAttributedString *)es_setExpansion:(CGFloat)expansion inRange:(NSRange)range;
- (NSAttributedString *)es_setURL:(NSURL *)url inRange:(NSRange)range;
- (NSAttributedString *)es_setAttacment:(NSTextAttachment *)attachment inRange:(NSRange)range;
- (NSAttributedString *)es_setImage:(UIImage *)image bound:(CGRect)bound atIndex:(NSInteger)index;
- (NSAttributedString *)es_setAttributes:(NSDictionary *)dic inRange:(NSRange)range;
@end
