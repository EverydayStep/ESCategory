//
//  UIScreen+ESSize.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "UIScreen+ESSize.h"
#import "UIDevice+ESInfo.h"

@implementation UIScreen (ESSize)
- (CGSize)es_size {
    return [UIScreen mainScreen].bounds.size;
}

- (CGFloat)es_width {
    return [UIScreen mainScreen].es_size.width;
}

- (CGFloat)es_height {
    return [UIScreen mainScreen].es_size.height;
}

- (CGFloat)es_maxLength {
    return MAX(self.es_width, self.es_height);
}

- (CGFloat)es_minLength {
    return MIN(self.es_width, self.es_height);
}

- (BOOL)es_isInch_3_5 {
#if TARGET_IPHONE_SIMULATOR
    //模拟器
    return self.es_maxLength < 568.0;
#elif TARGET_OS_IPHONE
    //真机
    NSString *platform = [UIDevice currentDevice].es_platform;
    if ([platform containsString:@"iPhone 4"] || [platform containsString:@"iPhone 3"]) {
        return YES;
    }
    return NO;
#endif
}

- (BOOL)es_isInch_4_0 {
    
#if TARGET_IPHONE_SIMULATOR
    //模拟器
    return self.es_maxLength == 568.0;
#elif TARGET_OS_IPHONE
    //真机
    NSString *platform = [UIDevice currentDevice].es_platform;
    if ([platform containsString:@"iPhone 5"] || [platform containsString:@"iPhone SE"]) {
        return YES;
    }
    return NO;
#endif
}

- (BOOL)es_isInch_4_7 {
    
#if TARGET_IPHONE_SIMULATOR
    //模拟器
    return self.es_maxLength == 667.0;
#elif TARGET_OS_IPHONE
    //真机
    NSString *platform = [UIDevice currentDevice].es_platform;
    BOOL condition1 = [platform containsString:@"iPhone 6"];
    BOOL condition2 = [platform containsString:@"iPhone 7"];
    BOOL condition3 = [platform containsString:@"Plus"];
    
    if ((condition1 || condition2) && !condition3) {
        return YES;
    }
    return NO;
#endif
}

- (BOOL)es_isInch_5_5 {
    
#if TARGET_IPHONE_SIMULATOR
    //模拟器
    return self.es_maxLength == 736.0;
#elif TARGET_OS_IPHONE
    //真机
    NSString *platform = [UIDevice currentDevice].es_platform;
    if ([platform containsString:@"Plus"]) {
        return YES;
    }
    return NO;
#endif
}

- (BOOL)es_isZoomModel {
    
#if TARGET_IPHONE_SIMULATOR
    //模拟器
    return NO;
#elif TARGET_OS_IPHONE
    //真机
    BOOL condition1 = [self es_isInch_4_7] && ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640,1136), [[UIScreen mainScreen] currentMode].size) : NO);
    BOOL condition2 = [self es_isInch_5_5] && ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125,1125), [[UIScreen mainScreen] currentMode].size) : NO);
    return condition1 || condition2;
#endif
}

@end
