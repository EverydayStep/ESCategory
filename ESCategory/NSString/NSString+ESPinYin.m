
//
//  NSString+ESPinYin.m
//  ESCategory
//
//  Created by codeLocker on 2017/12/20.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSString+ESPinYin.h"

@implementation NSString (ESPinYin)
- (NSString *)es_pinyin {
    if (self.length == 0) {
        return @"";
    }
    NSMutableString *mutableString = [NSMutableString stringWithString:self];
    //汉字转成拼音
    CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformToLatin, false);
    //去掉音调
    CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformStripDiacritics, false);
    return [mutableString copy];
}
@end
