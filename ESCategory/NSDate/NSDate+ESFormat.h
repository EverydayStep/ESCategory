//
//  NSDate+ESFormat.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (ESFormat)
/** 当前的日历 */
@property (nonatomic, readonly) NSCalendar * es_calendar;

- (NSString *)es_stringForFormat:(NSString *)format;
+ (NSDate *)es_dateFromString:(NSString *)string format:(NSString *)format;

@end
