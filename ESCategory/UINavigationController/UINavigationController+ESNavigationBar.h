//
//  UINavigationController+ESNavigationBar.h
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (ESNavigationBar)
- (void)es_setTitleColor:(UIColor *)color font:(UIFont *)font;
- (void)es_setBackItemTitle:(NSString *)title viewController:(UIViewController *)viewController;
- (void)es_setRightItem:(UIBarButtonSystemItem)systemType delegate:(UIViewController *)viewController action:(SEL)method;
@end
