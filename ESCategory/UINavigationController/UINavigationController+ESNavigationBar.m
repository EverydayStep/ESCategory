//
//  UINavigationController+ESNavigationBar.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "UINavigationController+ESNavigationBar.h"

@implementation UINavigationController (ESNavigationBar)

- (void)es_setTitleColor:(UIColor *)color font:(UIFont *)font {
    NSDictionary *attributes=[NSDictionary dictionaryWithObjectsAndKeys:color,NSForegroundColorAttributeName,font,NSFontAttributeName, nil];
    [self.navigationBar setTitleTextAttributes:attributes];
}

- (void)es_setBackItemTitle:(NSString *)title viewController:(UIViewController *)viewController {
    
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] init];
    backItem.title = title;
    viewController.navigationItem.backBarButtonItem = backItem;
}

- (void)es_setRightItem:(UIBarButtonSystemItem)type delegate:(UIViewController *)viewController action:(SEL)method {
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:type target:viewController action:method];
    viewController.navigationItem.rightBarButtonItem = rightItem;
}
@end
