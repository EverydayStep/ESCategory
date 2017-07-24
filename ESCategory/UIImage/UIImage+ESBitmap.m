//
//  UIImage+ESBitmap.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "UIImage+ESBitmap.h"

@implementation UIImage (ESBitmap)
- (UIImage *)es_imageAtRect:(CGRect)rect {
    
    CGImageRef imageRef = self.CGImage;
    CGImageRef newImageRef = CGImageCreateWithImageInRect(imageRef, rect);
    UIImage *image = [UIImage imageWithCGImage:newImageRef];
    CGImageRelease(newImageRef);
    return image;
}

- (UIImage *)es_imageAspectToMinSize:(CGSize)targetSize {
    
    if (CGSizeEqualToSize(self.size, targetSize) || CGSizeEqualToSize(targetSize, CGSizeZero))
        return self;
    
    CGFloat xFactor = targetSize.width/self.size.width;
    CGFloat yFactor = targetSize.height/self.size.height;
    
    CGFloat scaleFactor = xFactor>yFactor ? xFactor : yFactor;
    
    CGFloat scaleWidth = self.size.width * scaleFactor;
    CGFloat scaleHeight = self.size.height * scaleFactor;
    
    CGPoint anchorPoint = CGPointZero;
    
    if (xFactor > yFactor)
        anchorPoint.y = (targetSize.height - scaleHeight)/2.0;
    if (xFactor < yFactor)
        anchorPoint.x = (targetSize.width - scaleWidth)/2.0;
    
    UIGraphicsBeginImageContextWithOptions(targetSize, YES, [UIScreen mainScreen].scale);
    CGRect anchorRect = CGRectZero;
    anchorRect.origin = anchorPoint;
    anchorRect.size.width = scaleWidth;
    anchorRect.size.height = scaleHeight;
    [self drawInRect:anchorRect];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
    
}

- (UIImage *)es_imageAspectToMaxSize:(CGSize)targetSize {
    
    if (CGSizeEqualToSize(self.size, targetSize) || CGSizeEqualToSize(targetSize, CGSizeZero))
        return self;
    
    CGFloat xFactor = targetSize.width/self.size.width;
    CGFloat yFactor = targetSize.height/self.size.height;
    
    CGFloat scaleFactor = xFactor<yFactor ? xFactor : yFactor;
    
    CGFloat scaleWidth = self.size.width * scaleFactor;
    CGFloat scaleHeight = self.size.height * scaleFactor;
    
    CGPoint anchorPoint = CGPointZero;
    
    if (xFactor < yFactor)
        anchorPoint.y = (targetSize.height - scaleHeight)/2.0;
    if (xFactor > yFactor)
        anchorPoint.x = (targetSize.width - scaleWidth)/2.0;
    
    UIGraphicsBeginImageContextWithOptions(targetSize, NO, [UIScreen mainScreen].scale);
    CGRect anchorRect = CGRectZero;
    anchorRect.origin = anchorPoint;
    anchorRect.size.width = scaleWidth;
    anchorRect.size.height = scaleHeight;
    [self drawInRect:anchorRect];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)es_imageFromColor:(UIColor *)color {
    
    color = color ? : [UIColor whiteColor];
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
