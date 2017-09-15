//
//  NSNumber+ESFormat.m
//  ESCategory
//
//  Created by codeLocker on 2017/9/15.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "NSNumber+ESFormat.h"

@implementation NSNumber (ESFormat)
- (NSString *)es_stringForStype:(NSNumberFormatterStyle)style minimumIntegerDigits:(NSInteger)minimumIntegerDigits maximumIntegerDigits:(NSInteger)maximumIntegerDigits minimumFractionDigits:(NSInteger)minimumFractionDigits maximumFractionDigits:(NSInteger)maximumFractionDigits {
    NSNumberFormatter *format = [[NSNumberFormatter alloc]init];
    format.numberStyle = style;
    if (minimumIntegerDigits >= 0) {
        format.minimumIntegerDigits = minimumIntegerDigits;
    }
    if (maximumIntegerDigits >= 0) {
        format.maximumIntegerDigits = maximumIntegerDigits;
    }
    if (minimumFractionDigits >= 0) {
        format.minimumFractionDigits = minimumFractionDigits;
    }
    if (maximumFractionDigits >= 0) {
        format.minimumIntegerDigits = maximumFractionDigits;
    }
    return [self es_stringWithFormat:format];
}


- (NSString *)es_stringWithFormat:(NSNumberFormatter *)format {
    return [format stringFromNumber:self];
}

+ (NSString *)currencyCode {
    return [[NSNumberFormatter alloc] init].currencyCode;
}

+ (NSString *)currencySymbol {
    return [[NSNumberFormatter alloc] init].currencySymbol;
}

+ (NSString *)internationalCurrencySymbol {
    return [[NSNumberFormatter alloc] init].internationalCurrencySymbol;
}

+ (NSString *)percentSymbol {
    return [[NSNumberFormatter alloc] init].percentSymbol;
}

+ (NSString *)perMillSymbol {
    return [[NSNumberFormatter alloc] init].perMillSymbol;
}

+ (NSString *)minusSign {
    return [[NSNumberFormatter alloc] init].minusSign;
}

+ (NSString *)plusSign {
    return [[NSNumberFormatter alloc] init].plusSign;
}

+ (NSString *)exponentSymbol {
    return [[NSNumberFormatter alloc] init].exponentSymbol;
}
@end
