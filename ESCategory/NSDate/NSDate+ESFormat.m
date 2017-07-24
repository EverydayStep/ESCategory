//
//  NSDate+ESFormat.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSDate+ESFormat.h"
#import <ESUtils/ESUtils.h>

@implementation NSDate (ESFormat)
- (NSCalendar *)es_calendar {
    return [NSCalendar currentCalendar];
}

- (NSString *)es_stringForFormat:(NSString *)format {
    if ([ESUtils isEmptyString:format]) {
        format = @"yyyy-MM-dd HH:mm:ss";
    }
    NSDateFormatter *dateFormat = [NSDateFormatter new];
    [dateFormat setDateFormat:format];
    return [dateFormat stringFromDate:self];
}

+ (NSDate *)es_dateFromString:(NSString *)string format:(NSString *)format {
    if ([ESUtils isEmptyString:string]) {
        return nil;
    }
    if ([ESUtils isEmptyString:format]) {
        format = @"yyyy-MM-dd HH:mm:ss";
    }
    NSDateFormatter *dateFormat = [NSDateFormatter new];
    [dateFormat setDateFormat:format];
    return [dateFormat dateFromString:string];
}

@end
