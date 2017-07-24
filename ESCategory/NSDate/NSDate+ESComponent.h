//
//  NSDate+ESComponent.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (ESComponent)
@property (nonatomic, assign, readonly) NSInteger es_era;
@property (nonatomic, assign, readonly) NSInteger es_year;
@property (nonatomic, assign, readonly) NSInteger es_month;
@property (nonatomic, assign, readonly) NSInteger es_day;
@property (nonatomic, assign, readonly) NSInteger es_hour;
@property (nonatomic, assign, readonly) NSInteger es_minute;
@property (nonatomic, assign, readonly) NSInteger es_second;
@property (nonatomic, assign, readonly) NSInteger es_weekday;
@property (nonatomic, assign, readonly) NSInteger es_weekdayOrdinal;
@property (nonatomic, assign, readonly) NSInteger es_quarter;
@property (nonatomic, assign, readonly) NSInteger es_weekOfMonth;
@property (nonatomic, assign, readonly) NSInteger es_weekOfYear;
@property (nonatomic, assign, readonly) NSInteger es_yearForWeekOfYear;
@property (nonatomic, assign, readonly) NSInteger es_nanosecond;
@property (nonatomic, assign, readonly) NSInteger es_calendar;
@property (nonatomic, assign, readonly) NSInteger es_timeZone;

@property (nonatomic, readonly) NSString * es_chineseYear;
@property (nonatomic, readonly) NSString * es_chineseMonth;
@property (nonatomic, readonly) NSString * es_chineseDay;
@property (nonatomic, readonly) NSString * es_chineseLongWeekday;
@property (nonatomic, readonly) NSString * es_chineseShortWeekday;
@end
