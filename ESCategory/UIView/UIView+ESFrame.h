//
//  UIView+ESFrame.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ESFrame)
@property (nonatomic, assign) CGPoint es_origin;
@property (nonatomic, assign) CGSize es_size;

@property (nonatomic, assign) CGFloat es_x;
@property (nonatomic, assign) CGFloat es_y;

@property (nonatomic, assign) CGFloat es_width;
@property (nonatomic, assign) CGFloat es_height;

@property (nonatomic, assign) CGFloat es_minX;
@property (nonatomic, assign) CGFloat es_minY;

@property (nonatomic, assign) CGFloat es_midX;
@property (nonatomic, assign) CGFloat es_midY;

@property (nonatomic, assign) CGFloat es_maxX;
@property (nonatomic, assign) CGFloat es_maxY;
@end
