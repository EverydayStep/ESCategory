//
//  UIDevice+ESInfo.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (ESInfo)
/** 设备型号 */
@property (nonatomic, readonly, strong) NSString *es_platform;
/** 设备系统版本 */
@property (nonatomic, readonly, assign) CGFloat es_systemVersion;
/** 设备是否是iPhone */
@property (nonatomic, readonly, assign) BOOL es_isIphone;
/** 设备是否是iPad */ 
@property (nonatomic, readonly, assign) BOOL es_isIpad;
/** 网络运营商 */
@property (nonatomic, readonly, strong) NSString *es_carrier;
@end
