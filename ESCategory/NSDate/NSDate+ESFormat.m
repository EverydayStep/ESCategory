//
//  NSDate+ESFormat.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSDate+ESFormat.h"

@implementation NSDate (ESFormat)
- (NSCalendar *)es_calendar {
    return [NSCalendar currentCalendar];
}

- (NSString *)es_stringForFormat:(NSString *)format {
    if (format == nil || format.length == 0) { format = @"yyyy-MM-dd HH:mm:ss"; }
    NSDateFormatter *dateFormat = [NSDateFormatter new];
    [dateFormat setDateFormat:format];
    return [dateFormat stringFromDate:self];
}

+ (NSDate *)es_dateFromString:(NSString *)string format:(NSString *)format {
    if (string == nil || string.length == 0) { return nil; }
    if (format == nil || format.length == 0) { format = @"yyyy-MM-dd HH:mm:ss"; }
    NSDateFormatter *dateFormat = [NSDateFormatter new];
    [dateFormat setDateFormat:format];
    return [dateFormat dateFromString:string];
}

@end
