//
//  UIView+ESFrame.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "UIView+ESFrame.h"

@implementation UIView (ESFrame)
- (void)setEs_origin:(CGPoint)es_origin {
    CGRect rect = self.frame;
    rect.origin = es_origin;
    self.frame = rect;
}

- (CGPoint)es_origin{
    return self.frame.origin;
}

- (void)setEs_size:(CGSize)es_size{
    CGRect rect = self.frame;
    rect.size = es_size;
    self.frame = rect;
}

- (CGSize)es_size{
    return self.frame.size;
}

- (void)setEs_x:(CGFloat)es_x{
    
    CGRect frame = self.frame;
    frame.origin.x = es_x;
    self.frame = frame;
}

- (CGFloat)es_x{
    return self.frame.origin.x;
}

- (void)setEs_y:(CGFloat)es_y{
    CGRect frame = self.frame;
    frame.origin.y = es_y;
    self.frame = frame;
}

- (CGFloat)es_y{
    return self.frame.origin.y;
}

- (void)setEs_width:(CGFloat)es_width{
    CGRect frame = self.frame;
    frame.size.width = es_width;
    self.frame = frame;
}

- (CGFloat)es_width{
    return self.frame.size.width;
}

- (void)setEs_height:(CGFloat)es_height{
    CGRect frame = self.frame;
    frame.size.height = es_height;
    self.frame = frame;
}

- (CGFloat)es_height{
    return self.frame.size.height;
}

- (void)setEs_minX:(CGFloat)es_minX{
    CGRect rect = self.frame;
    rect.origin.x = es_minX;
    self.frame = rect;
}

- (CGFloat)es_minX{
    return self.frame.origin.x;
}

- (void)setEs_minY:(CGFloat)es_minY{
    CGRect rect = self.frame;
    rect.origin.y = es_minY;
    self.frame = rect;
}

- (CGFloat)es_minY{
    return self.frame.origin.y;
}

- (void)setEs_midX:(CGFloat)es_midX{
    self.center = CGPointMake(es_midX, self.center.y);
}

- (CGFloat)es_midX{
    return self.center.x;
}

- (void)setEs_midY:(CGFloat)es_midY{
    self.center = CGPointMake(self.center.x, es_midY);
}

- (CGFloat)es_midY{
    return self.center.y;
}

- (void)setEs_maxX:(CGFloat)es_maxX{
    CGRect rect = self.frame;
    rect.origin.x = es_maxX - self.es_width;
    self.frame = rect;
}

- (CGFloat)es_maxX{
    return self.es_x + self.es_width;
}

- (void)setEs_maxY:(CGFloat)es_maxY{
    CGRect rect = self.frame;
    rect.origin.y = es_maxY - self.es_height;
    self.frame = rect;
}

- (CGFloat)es_maxY{
    return self.es_y + self.es_height;
}

@end
