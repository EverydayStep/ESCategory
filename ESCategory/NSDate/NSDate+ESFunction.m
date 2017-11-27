//
//  NSDate+ESFunction.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSDate+ESFunction.h"
#import "NSDate+ESFormat.h"

@implementation NSDate (ESFunction)

- (BOOL)es_isLaterThan:(NSDate *)date {
    return ([self compare:date] == NSOrderedDescending);
}

- (BOOL)es_isEarlierThan:(NSDate *)date {
    return ([self compare:date] == NSOrderedAscending);
}

- (NSDate *)es_addingYears:(NSInteger)years {
    if (years == 0)
        return self;
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setYear:years];
    NSDate *newDate = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:self options:0];
    return newDate;
}

- (NSDate *)es_subtractingYears:(NSInteger)years {
    return [self es_addingYears:-years];
}

- (NSDate *)es_addingMonths:(NSInteger)months {
    if (months == 0)
        return self;
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setMonth:months];
    NSDate *newDate = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:self options:0];
    return newDate;
}

- (NSDate *)es_subtractingMonths:(NSInteger)months {
    return [self es_addingMonths:-months];
}

- (NSDate *)es_addingDays:(NSInteger)days {
    if (days == 0)
        return self;
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setDay:days];
    NSDate *newDate = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:self options:0];
    return newDate;
}

- (NSDate *)es_subtractingDays:(NSInteger)days {
    return [self es_addingDays:-days];
}

- (NSDate *)es_addingHours:(NSInteger)hours {
    if (hours == 0)
        return self;
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setHour:hours];
    NSDate *newDate = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:self options:0];
    return newDate;
}

- (NSDate *)es_subtractingHours:(NSInteger)hours {
    return [self es_addingHours:-hours];
}

- (NSDate *)es_addingMinutes:(NSInteger)minutes {
    if (minutes == 0)
        return self;
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setMinute:minutes];
    NSDate *newDate = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:self options:0];
    return newDate;
}

- (NSDate *)es_subtractingMinutes:(NSInteger)minutes {
    return [self es_addingMinutes:-minutes];
}

- (NSDate *)es_addingSeconds:(NSInteger)seconds {
    if (seconds == 0)
        return self;
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setSecond:seconds];
    NSDate *newDate = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:self options:0];
    return newDate;
}

- (NSDate *)es_subtractingSeconds:(NSInteger)seconds {
    return [self es_addingSeconds:-seconds];
}

- (NSDate *)es_setValue:(NSInteger)value forUnit:(NSCalendarUnit)unit{
    value = value < 0 ? 0 : value;
    NSDateComponents *component = [self.es_calendar components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour|NSCalendarUnitMinute|NSCalendarUnitSecond fromDate:self];
    [component setValue:value forComponent:unit];
    return [self.es_calendar dateFromComponents:component];
    
}

- (NSDate *)es_setYear:(NSInteger)year {
    return [self es_setValue:year forUnit:NSCalendarUnitYear];
}

- (NSDate *)es_setMonth:(NSInteger)month {
    return [self es_setValue:month forUnit:NSCalendarUnitMonth];
}

- (NSDate *)es_setDay:(NSInteger)day {
    return [self es_setValue:day forUnit:NSCalendarUnitDay];
}

- (NSDate *)es_setHour:(NSInteger)hour {
    return [self es_setValue:hour forUnit:NSCalendarUnitHour];
}

- (NSDate *)es_setMinute:(NSInteger)minute {
    return [self es_setValue:minute forUnit:NSCalendarUnitMinute];
}

- (NSDate *)es_setSecond:(NSInteger)second {
    return [self es_setValue:second forUnit:NSCalendarUnitSecond];
}

- (NSInteger)es_numberOfDaysInMonth {
    NSRange range = [self.es_calendar rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:self];
    return range.length;
}

@end
