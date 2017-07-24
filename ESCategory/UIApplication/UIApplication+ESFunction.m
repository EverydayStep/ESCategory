//
//  UIApplication+ESFunction.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "UIApplication+ESFunction.h"

@implementation UIApplication (ESFunction)
- (void)es_hideKeyboard {
    [self sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
}
@end
