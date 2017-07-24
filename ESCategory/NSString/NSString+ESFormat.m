//
//  NSString+ESFormat.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSString+ESFormat.h"

@implementation NSString (ESFormat)
+ (NSString *)es_stringFromInt:(NSInteger)value {
    return [NSString stringWithFormat:@"%ld",(long)value];
}

+ (NSString *)es_stringFromFloat:(CGFloat)value {
    return [NSString stringWithFormat:@"%f",value];
}

+ (NSString *)es_stringFromBool:(BOOL)value {
    return value ? @"YES" : @"NO";
}

+ (NSString *)es_stringFromPoint:(CGPoint)value {
    return NSStringFromCGPoint(value);
}

+ (NSString *)es_stringFromSize:(CGSize)value {
    return NSStringFromCGSize(value);
}

+ (NSString *)es_stringFromRect:(CGRect)value {
    return NSStringFromCGRect(value);
}
@end
