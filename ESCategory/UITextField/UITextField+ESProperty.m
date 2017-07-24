//
//  UITextField+ESProperty.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "UITextField+ESProperty.h"

@implementation UITextField (ESProperty)
- (void)setEs_placeholderColor:(UIColor *)es_placeHolderColor {
    [self setValue:es_placeHolderColor forKeyPath:@"placeholderLabel.textColor"];
}

- (UIColor *)es_placeholderColor {
    return [self valueForKeyPath:@"placeholderLabel.textColor"];
}
@end
