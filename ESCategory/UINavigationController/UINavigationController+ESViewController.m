//
//  UINavigationController+ESViewController.m
//  ESCategory
//
//  Created by codeLocker on 2017/9/13.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "UINavigationController+ESViewController.h"

@implementation UINavigationController (ESViewController)
- (UIViewController *)es_viewControllerOfClass:(Class)aClass {
    for (UIViewController *vc in self.viewControllers) {
        if ([vc isKindOfClass:aClass]) {
            return vc;
        }
    }
    return nil;
}
@end
