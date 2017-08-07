//
//  NSString+ESSize.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSString+ESSize.h"
#import <ESUtils/ESUtils.h>

@implementation NSString (ESSize)

- (CGFloat)es_heightWithFont:(UIFont *)font width:(CGFloat)width mode:(NSLineBreakMode)lineBrekMode {
    if ([ESUtils isEmptyString:self]) {
        return 0;
    }
    
    CGSize size = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:@{
                                               NSFontAttributeName:font,
                                               }
                                     context:nil].size;
    return size.height;
}

- (CGFloat)es_heightWithFont:(UIFont *)font width:(CGFloat)width linespace:(CGFloat)linespace mode:(NSLineBreakMode)lineBrekMode {
    
    if ([ESUtils isEmptyString:self]) {
        return 0;
    }
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    [style setLineBreakMode:lineBrekMode];
    style = [[NSMutableParagraphStyle alloc] init];
    [style setLineSpacing:linespace];//调整行间距
    
    CGSize size = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:@{
                                               NSFontAttributeName:font,
                                               NSParagraphStyleAttributeName:style
                                               }
                                     context:nil].size;
    return size.height;
}

- (CGFloat)es_widthWithFont:(UIFont *)font height:(CGFloat)height mode:(NSLineBreakMode)lineBrekMode {
    if ([ESUtils isEmptyString:self]) {
        return 0;
    }
    
    CGSize size = [self boundingRectWithSize:CGSizeMake(MAXFLOAT, height)
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:@{
                                               NSFontAttributeName:font,
                                               }
                                     context:nil].size;
    return size.width;
}

- (CGFloat)es_widthWithFont:(UIFont *)font height:(CGFloat)height linespace:(CGFloat)linespace mode:(NSLineBreakMode)lineBrekMode {
    if ([ESUtils isEmptyString:self]) {
        return 0;
    }
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    [style setLineBreakMode:lineBrekMode];
    style = [[NSMutableParagraphStyle alloc] init];
    [style setLineSpacing:linespace];//调整行间距
    
    CGSize size = [self boundingRectWithSize:CGSizeMake(MAXFLOAT, height)
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:@{
                                               NSFontAttributeName:font,
                                               NSParagraphStyleAttributeName:style
                                               }
                                     context:nil].size;
    return size.width;
}
@end
