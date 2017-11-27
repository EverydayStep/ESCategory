//
//  NSDate+ESFunction.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (ESFunction)
- (BOOL)es_isLaterThan:(NSDate *)date;
- (BOOL)es_isEarlierThan:(NSDate *)date;

- (NSDate *)es_addingYears:(NSInteger)years;
- (NSDate *)es_subtractingYears:(NSInteger)years;
- (NSDate *)es_addingMonths:(NSInteger)months;
- (NSDate *)es_subtractingMonths:(NSInteger)months;
- (NSDate *)es_addingDays:(NSInteger)days;
- (NSDate *)es_subtractingDays:(NSInteger)days;
- (NSDate *)es_addingHours:(NSInteger)hours;
- (NSDate *)es_subtractingHours:(NSInteger)hours;
- (NSDate *)es_addingMinutes:(NSInteger)minutes;
- (NSDate *)es_subtractingMinutes:(NSInteger)minutes;
- (NSDate *)es_addingSeconds:(NSInteger)seconds;
- (NSDate *)es_subtractingSeconds:(NSInteger)seconds;

- (NSDate *)es_setYear:(NSInteger)year;
- (NSDate *)es_setMonth:(NSInteger)month;
- (NSDate *)es_setDay:(NSInteger)day;
- (NSDate *)es_setHour:(NSInteger)hour;
- (NSDate *)es_setMinute:(NSInteger)minute;
- (NSDate *)es_setSecond:(NSInteger)second;

/** 本月有多少天 */
@property (nonatomic, assign, readonly) NSInteger es_numberOfDaysInMonth;
@end
