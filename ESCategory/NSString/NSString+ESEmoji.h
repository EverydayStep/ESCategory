//
//  NSString+ESEmoji.h
//  ESCategory
//
//  Created by codeLocker on 2017/10/10.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ESEmoji)
/**
 字符串中是否含有emoji

 @return YES:包含emoji NO:不包含emoji
 */
- (BOOL)es_containEmoji;
@end
