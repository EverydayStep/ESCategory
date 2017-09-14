//
//  NSAttributedString+ESGenerate.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSAttributedString+ESGenerate.h"

@implementation NSAttributedString (ESGenerate)
- (NSAttributedString *)es_setColor:(UIColor *)color inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSForegroundColorAttributeName value:color range:range];
    return [string copy];
}

- (NSAttributedString *)es_setFont:(UIFont *)font inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSFontAttributeName value:font range:range];
    return [string copy];
}

- (NSAttributedString *)es_setBackgroundColor:(UIColor *)color inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSBackgroundColorAttributeName value:color range:range];
    return [string copy];
}

- (NSAttributedString *)es_setStrokeColor:(UIColor *)color strokeWidth:(CGFloat)width inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSStrokeColorAttributeName value:color range:range];
    [string addAttribute:NSStrokeWidthAttributeName value:[NSNumber numberWithFloat:width] range:range];
    return [string copy];
}

- (NSAttributedString *)es_setShadow:(NSShadow *)shadow inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSShadowAttributeName value:shadow range:range];
    return [string copy];
}

- (NSAttributedString *)es_setDeleteLine:(NSUnderlineStyle)lineStyle color:(UIColor *)color inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSStrikethroughStyleAttributeName value:[NSNumber numberWithInteger:lineStyle] range:range];
    [string addAttribute:NSStrikethroughColorAttributeName value:color range:range];
    return [string copy];
    
}

- (NSAttributedString *)es_setUnderLine:(NSUnderlineStyle)lineStyle color:(UIColor *)color inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:lineStyle] range:range];
    [string addAttribute:NSUnderlineColorAttributeName value:color range:range];
    return [string copy];
}
- (NSAttributedString *)es_setKern:(CGFloat)kern inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSKernAttributeName value:[NSNumber numberWithFloat:kern] range:range];
    return [string copy];
}

- (NSAttributedString *)es_setParagraphStyle:(NSParagraphStyle *)paragraphStyle inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:range];
    return [string copy];
}

- (NSAttributedString *)es_setLinespace:(CGFloat)linespace breakMode:(NSLineBreakMode)breakMode inRange:(NSRange)range {
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    style.lineSpacing = linespace;
    style.lineBreakMode = breakMode;
    return [self es_setParagraphStyle:style inRange:range];
}

- (NSAttributedString *)es_setEffect:(NSString *)effect inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSTextEffectAttributeName value:effect range:range];
    return [string copy];
}

- (NSAttributedString *)es_setLigature:(BOOL)isLigature inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSLigatureAttributeName value:[NSNumber numberWithInteger:isLigature] range:range];
    return [string copy];
}

- (NSAttributedString *)es_setObliqueness:(CGFloat)obliqueness inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSObliquenessAttributeName value:[NSNumber numberWithFloat:obliqueness] range:range];
    return [string copy];
}

- (NSAttributedString *)es_setBaseLineOffset:(CGFloat)offset inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSBaselineOffsetAttributeName value:[NSNumber numberWithFloat:offset] range:range];
    return [string copy];
}

- (NSAttributedString *)es_setExpansion:(CGFloat)expansion inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSExpansionAttributeName value:[NSNumber numberWithFloat:expansion] range:range];
    return [string copy];
}

- (NSAttributedString *)es_setURL:(NSURL *)url inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSLinkAttributeName value:url range:range];
    return [string copy];
}

- (NSAttributedString *)es_setAttacment:(NSTextAttachment *)attachment inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttribute:NSAttachmentAttributeName value:attachment range:range];
    return [string copy];
}

- (NSAttributedString *)es_setImage:(UIImage *)image bound:(CGRect)bound atIndex:(NSInteger)index {
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = image;
    attachment.bounds = bound;
    NSAttributedString *imageStr = [NSAttributedString attributedStringWithAttachment:attachment];
    NSMutableAttributedString *mutStr = [self mutableCopy];
    [mutStr insertAttributedString:imageStr atIndex:0];
    return [mutStr copy];
}

- (NSAttributedString *)es_setAttributes:(NSDictionary *)dic inRange:(NSRange)range{
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithAttributedString:self];
    [string addAttributes:dic range:range];
    return [string copy];
}

@end
