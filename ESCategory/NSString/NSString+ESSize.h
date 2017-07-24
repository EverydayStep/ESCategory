//
//  NSString+ESSize.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (ESSize)

- (CGFloat)es_heightWithFont:(UIFont *)font width:(CGFloat)width linespace:(CGFloat)linespace mode:(NSLineBreakMode)lineBrekMode;

- (CGFloat)es_widthWithFont:(UIFont *)font height:(CGFloat)height linespace:(CGFloat)linespace mode:(NSLineBreakMode)lineBrekMode;
@end
