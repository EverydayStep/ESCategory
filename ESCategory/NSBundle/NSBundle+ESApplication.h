//
//  NSBundle+ESApplication.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSBundle (ESApplication)
@property (nonatomic, readonly) NSString *es_appName;
@property (nonatomic, readonly) NSString *es_appVersion;
@property (nonatomic, readonly) NSString *es_appBuildVersion;
@property (nonatomic, readonly) NSString *es_appBundleIdentifier;
@end
