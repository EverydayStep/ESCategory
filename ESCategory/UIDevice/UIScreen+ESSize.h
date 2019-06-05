//
//  UIScreen+ESSize.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (ESSize)
@property (nonatomic, readonly, assign) CGFloat es_width;
@property (nonatomic, readonly, assign) CGFloat es_height;
@property (nonatomic, readonly, assign) CGSize es_size;
@property (nonatomic, readonly, assign) CGFloat es_maxLength;
@property (nonatomic, readonly, assign) CGFloat es_minLength;

/** 手机屏幕尺寸与分辨率无关*/
@property (nonatomic, readonly) BOOL es_isInch_3_5;
@property (nonatomic, readonly) BOOL es_isInch_4_0;
@property (nonatomic, readonly) BOOL es_isInch_4_7;
@property (nonatomic, readonly) BOOL es_isInch_5_5;
@property (nonatomic, readonly) BOOL es_isInch_5_8;
@property (nonatomic, readonly) BOOL es_isInch_6_1;
@property (nonatomic, readonly) BOOL es_isInch_6_5;
/** 是否是放大模式，仅在真机上适用*/
@property (nonatomic, readonly) BOOL es_isZoomModel;
@end
