//
//  NSString+ESRegular.m
//  ESCategory
//
//  Created by codeLocker on 2018/3/14.
//  Copyright © 2018年 codeLocker. All rights reserved.
//

#import "NSString+ESRegular.h"
/*
移动 134 135 136 137 138 139 147 150 151 152 157 158 159 1705 178 182 183 184 187 188 198
联通 130 131 132 145 155 156 166 1707 1708 1709 175 176 185 186
电信 133 153 1700 173 177 180 181 189 199
*/
@implementation NSString (ESRegular)
- (BOOL)es_isChinaPhoneNumber {
    return YES;
}

- (BOOL)es_isChinaMobilePhoneNumber {
    if (self.length != 11) {
        return NO;
    }
    NSString *regular = @"^((13[4-9])|(147)|(15[0-2,7-9])|(17[8])|(18[2-4,7-8])|(19[8]))\\d{8}|(170[5])\\d{7}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regular];
    BOOL result = [predicate evaluateWithObject:self];
    return result;
}

- (BOOL)es_isChinaUnicomPhoneNumber {
    if (self.length != 11) {
        return NO;
    }
    NSString *regular = @"^((13[0-2])|(145)|(15[5-6])|(17[156])|(18[5-6]))\\d{8}|(170[4,7-9])\\d{7}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regular];
    BOOL result = [predicate evaluateWithObject:self];
    return result;
}

- (BOOL)es_isChinaTelecomPhoneNumber {
    if (self.length != 11) {
        return NO;
    }
    NSString *regular = @"^((13[3])|(149)|(15[3])|(17[1,7])|(18[0,1,9])|(19[9]))\\d{8}|(170[0-2])\\d{7}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regular];
    BOOL result = [predicate evaluateWithObject:self];
    return result;
}
@end
