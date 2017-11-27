//
//  UIView+ESBitmap.m
//  ESCategory
//
//  Created by codeLocker on 2017/11/27.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "UIView+ESBitmap.h"

@implementation UIView (ESBitmap)
- (UIImage *)es_imageInRect:(CGRect)rect {
    if (CGRectEqualToRect(rect, CGRectZero)) {
        return nil;
    }
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, YES, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [self.layer renderInContext:context];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return [UIImage imageWithCGImage:CGImageCreateWithImageInRect(image.CGImage, CGRectMake(rect.origin.x * [UIScreen mainScreen].scale, rect.origin.y * [UIScreen mainScreen].scale, rect.size.width * [UIScreen mainScreen].scale, rect.size.height * [UIScreen mainScreen].scale))];
}
@end
