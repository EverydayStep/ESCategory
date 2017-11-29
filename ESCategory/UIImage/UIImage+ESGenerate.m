//
//  UIImage+ESGenerate.m
//  ESCategory
//
//  Created by codeLocker on 2017/11/29.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "UIImage+ESGenerate.h"

@implementation UIImage (ESGenerate)
+ (UIImage *)es_imageFromBundle:(NSString *)image type:(NSString *)type {
    NSString *path = [[NSBundle mainBundle] pathForResource:image ofType:type];
    return [UIImage imageWithContentsOfFile:path];
}
@end
