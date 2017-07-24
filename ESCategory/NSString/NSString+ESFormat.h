//
//  NSString+ESFormat.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (ESFormat)
+ (NSString *)es_stringFromInt:(NSInteger)value;
+ (NSString *)es_stringFromFloat:(CGFloat)value;
+ (NSString *)es_stringFromBool:(BOOL)value;
+ (NSString *)es_stringFromPoint:(CGPoint)value;
+ (NSString *)es_stringFromSize:(CGSize)value;
+ (NSString *)es_stringFromRect:(CGRect)value;
@end
