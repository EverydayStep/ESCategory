//
//  ViewController.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "ViewController.h"
//#import "UIView+ESHud.h"
#import "NSString+ESRegular.h"
#import "UIScreen+ESSize.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSString *phone = @"170011111";
//    if ([phone es_isChinaTelecomPhoneNumber]) {
//        NSLog(@"YES");
//    } else {
//        NSLog(@"NO");
//    }
    NSLog(@"%f", [UIScreen mainScreen].es_height);
    NSLog(@"%f", [UIScreen mainScreen].scale);
    if ([UIScreen mainScreen].es_isInch_5_8) {
        NSLog(@"YESSS");
    }

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
