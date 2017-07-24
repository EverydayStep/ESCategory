//
//  UIView+ESHud.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "UIView+ESHud.h"
#import <MBProgressHUD/MBProgressHUD.h>

@implementation UIView (ESHud)
- (void)es_showHUD:(NSString *)message{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.label.text = message;
    hud.contentColor = [UIColor whiteColor];
    hud.removeFromSuperViewOnHide = YES;
    hud.bezelView.color = [[UIColor blackColor] colorWithAlphaComponent:0.9];
}

- (void)es_hideHUD{
    [MBProgressHUD hideHUDForView:self animated:YES];
}

- (void)es_showHint:(NSString *)message{
    [self es_showHint:message delay:1.5 offset:CGPointMake(0, [UIScreen mainScreen].bounds.size.height/2.0f - 50)];
}

- (void)es_showHint:(NSString *)message delay:(CGFloat)delay {
    [self es_showHint:message delay:delay offset:CGPointMake(0, [UIScreen mainScreen].bounds.size.height/2.0f - 50)];
}

- (void)es_showHint:(NSString *)message offset:(CGPoint)offset {
    [self es_showHint:message delay:1.5 offset:offset];
}


- (void)es_showHint:(NSString *)message delay:(CGFloat)delay offset:(CGPoint)offset {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.label.text = message;
    hud.label.font = [UIFont systemFontOfSize:15];
    hud.contentColor = [UIColor whiteColor];
    hud.removeFromSuperViewOnHide = YES;
    hud.bezelView.color = [[UIColor blackColor] colorWithAlphaComponent:0.9];
    hud.margin = 10;
    hud.offset = offset;
    [hud hideAnimated:YES afterDelay:delay];
}

@end
