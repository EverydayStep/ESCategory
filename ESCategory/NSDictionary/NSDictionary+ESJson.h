//
//  NSDictionary+ESJson.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (ESJson)
- (NSString *)es_jsonString;
+ (NSDictionary *)es_dictionaryFromString:(NSString *)string;
@end
