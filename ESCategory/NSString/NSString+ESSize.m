//
//  NSString+ESSize.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSString+ESSize.h"

@implementation NSString (ESSize)

- (CGSize)es_sizeWithFont:(UIFont *)font size:(CGSize)size paragraphStyle:(NSParagraphStyle *)paragraphStyle {
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
    [attributes setObject:font forKey:NSFontAttributeName];
    if (paragraphStyle) {
        [attributes setObject:paragraphStyle forKey:NSParagraphStyleAttributeName];
    }
    CGSize stringSize = [self boundingRectWithSize:size
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:attributes
                                     context:nil].size;
    return stringSize;
}


- (CGFloat)es_heightWithFont:(UIFont *)font width:(CGFloat)width {
    if (self == nil || self.length == 0) { return 0; }
    return [self es_sizeWithFont:font size:CGSizeMake(width, MAXFLOAT) paragraphStyle:nil].height;
}

- (CGFloat)es_heightWithFont:(UIFont *)font width:(CGFloat)width linespace:(CGFloat)linespace mode:(NSLineBreakMode)lineBrekMode {
    if (self == nil || self.length == 0) { return 0; }
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineBreakMode:lineBrekMode];
    [paragraphStyle setLineSpacing:linespace];//调整行间距
    return [self es_sizeWithFont:font size:CGSizeMake(width, MAXFLOAT) paragraphStyle:paragraphStyle].height;
}

- (CGFloat)es_widthWithFont:(UIFont *)font height:(CGFloat)height {
    if (self == nil || self.length == 0) { return 0; }
    return [self es_sizeWithFont:font size:CGSizeMake(MAXFLOAT, height) paragraphStyle:nil].width;
}

- (CGFloat)es_widthWithFont:(UIFont *)font height:(CGFloat)height linespace:(CGFloat)linespace mode:(NSLineBreakMode)lineBrekMode {
    if (self == nil || self.length == 0) { return 0; }
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineBreakMode:lineBrekMode];
    [paragraphStyle setLineSpacing:linespace];//调整行间距
    return [self es_sizeWithFont:font size:CGSizeMake(MAXFLOAT, height) paragraphStyle:paragraphStyle].width;
}
@end
