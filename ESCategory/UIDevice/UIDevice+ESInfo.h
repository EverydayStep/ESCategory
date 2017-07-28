//
//  UIDevice+ESInfo.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (ESInfo)
@property (nonatomic, readonly) NSString *es_platform;
@property (nonatomic, readonly) CGFloat es_systemVersion;
@property (nonatomic, readonly, assign) BOOL es_isIphone;
@property (nonatomic, readonly, assign) BOOL es_isIpad;
@end
