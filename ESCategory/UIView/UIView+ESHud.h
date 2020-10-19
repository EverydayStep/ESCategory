//
//  UIView+ESHud.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ESHud)
- (void)es_showHUD:(NSString *)message;
- (void)es_hideHUD;

- (void)es_showHint:(NSString *)message;
- (void)es_showHint:(NSString *)message delay:(CGFloat)delay;
- (void)es_showHint:(NSString *)message offset:(CGPoint)offset;
- (void)es_showHint:(NSString *)message delay:(CGFloat)delay offset:(CGPoint)offset;
- (void)es_showHint:(NSString *)message delay:(CGFloat)delay offset:(CGPoint)offset font:(UIFont *)font;
@end
