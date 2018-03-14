//
//  ViewController.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ESHud.h"
#import "NSString+ESRegular.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *phone = @"170011111";
    if ([phone es_isChinaTelecomPhoneNumber]) {
        NSLog(@"YES");
    } else {
        NSLog(@"NO");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
