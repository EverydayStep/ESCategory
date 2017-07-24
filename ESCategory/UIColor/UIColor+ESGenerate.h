//
//  UIColor+ESGenerate.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (ESGenerate)
+ (UIColor *)es_random;
+ (UIColor *)es_r:(CGFloat)r g:(CGFloat)g b:(CGFloat)b a:(CGFloat)a;
+ (UIColor *)es_hex:(NSString *)hexStr;
@end
