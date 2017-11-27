//
//  NSDate+ESComponent.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSDate+ESComponent.h"
#import "NSDate+ESFormat.h"

@implementation NSDate (ESComponent)

- (NSInteger)es_era {
    return [self.es_calendar component:NSCalendarUnitEra fromDate:self];
}

- (NSInteger)es_year {
    return [self.es_calendar component:NSCalendarUnitYear fromDate:self];
}

- (NSInteger)es_month {
    return [self.es_calendar component:NSCalendarUnitMonth fromDate:self];
}

- (NSInteger)es_day {
    return [self.es_calendar component:NSCalendarUnitDay fromDate:self];
}

- (NSInteger)es_hour {
    return [self.es_calendar component:NSCalendarUnitHour fromDate:self];
}

- (NSInteger)es_minute {
    return [self.es_calendar component:NSCalendarUnitMinute fromDate:self];
}

- (NSInteger)es_second {
    return [self.es_calendar component:NSCalendarUnitSecond fromDate:self];
}

- (NSInteger)es_weekday {
    return [self.es_calendar component:NSCalendarUnitWeekday fromDate:self];
}

- (NSInteger)es_weekdayOrdinal {
    return [self.es_calendar component:NSCalendarUnitWeekdayOrdinal fromDate:self];
}

- (NSInteger)es_quarter {
    return [self.es_calendar component:NSCalendarUnitQuarter fromDate:self];
}

- (NSInteger)es_weekOfMonth {
    return [self.es_calendar component:NSCalendarUnitWeekOfMonth fromDate:self];
}

- (NSInteger)es_weekOfYear {
    return [self.es_calendar component:NSCalendarUnitWeekOfYear fromDate:self];
}

- (NSInteger)es_yearForWeekOfYear {
    return [self.es_calendar component:NSCalendarUnitYearForWeekOfYear fromDate:self];
}

- (NSInteger)es_nanosecond {
    return [self.es_calendar component:NSCalendarUnitNanosecond fromDate:self];
}

- (NSInteger)es_calendar {
    return [self.es_calendar component:NSCalendarUnitCalendar fromDate:self];
}

- (NSInteger)es_timeZone {
    return [self.es_calendar component:NSCalendarUnitTimeZone fromDate:self];
}

- (NSString *)es_chineseYear {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierChinese];
    NSDateComponents *components = [calendar components:NSCalendarUnitYear fromDate:self];
    NSArray *chineseYears = @[@"甲子",@"乙丑",@"丙寅",@"丁卯",@"戊辰",@"己巳",@"庚午",@"辛未",@"壬申",@"癸酉",@"甲戌",@"乙亥",@"丙子",@"丁丑",@"戊寅",@"己卯",@"庚辰",@"辛己",@"壬午",@"癸未",@"甲申",@"乙酉",@"丙戌",@"丁亥",@"戊子",@"己丑",@"庚寅",@"辛卯",@"壬辰",@"癸巳",@"甲午",@"乙未",@"丙申",@"丁酉",@"戊戌",@"己亥",@"庚子",@"辛丑",@"壬寅",@"癸丑",@"甲辰",@"乙巳",@"丙午",@"丁未",@"戊申",@"己酉",@"庚戌",@"辛亥",@"壬子",@"癸丑",@"甲寅",@"乙卯",@"丙辰",@"丁巳",@"戊午",@"己未",@"庚申",@"辛酉",@"壬戌",@"癸亥"];
    return chineseYears[components.year - 1];
}

- (NSString *)es_chineseMonth {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierChinese];
    NSDateComponents *components = [calendar components:NSCalendarUnitMonth fromDate:self];
    NSArray *chineseMonths = @[@"正月", @"二月", @"三月", @"四月", @"五月", @"六月", @"七月", @"八月",@"九月", @"十月", @"冬月", @"腊月"];
    return chineseMonths[components.month - 1];
}

- (NSString *)es_chineseDay {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierChinese];
    NSDateComponents *components = [calendar components:NSCalendarUnitDay fromDate:self];
    NSArray *chineseDays = @[@"初一", @"初二", @"初三", @"初四", @"初五", @"初六", @"初七", @"初八", @"初九", @"初十",@"十一", @"十二", @"十三", @"十四", @"十五", @"十六", @"十七", @"十八", @"十九", @"二十", @"廿一", @"廿二", @"廿三", @"廿四", @"廿五", @"廿六", @"廿七", @"廿八", @"廿九", @"三十"];
    return chineseDays[components.day - 1];
}

- (NSString *)es_chineseLongWeekday {
    NSArray *chineseLongWeekday = @[@"星期日",@"星期一",@"星期二",@"星期三",@"星期四",@"星期五",@"星期六"];
    return chineseLongWeekday[self.es_weekday - 1];
}

- (NSString *)es_chineseShortWeekday {
    NSArray *chineseShortWeekday = @[@"周日",@"周一",@"周二",@"周三",@"周四",@"周五",@"周六"];
    return chineseShortWeekday[self.es_weekday - 1];
}

- (NSInteger)es_numberOfDaysInMonth {
    NSRange range = [self.es_calendar rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:self];
    return range.length;
}

@end
