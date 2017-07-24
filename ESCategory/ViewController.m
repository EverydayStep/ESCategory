//
//  ViewController.m
//  ESCategory
//
//  Created by codeLocker on 2017/7/24.
//  Copyright © 2017年 codeLocker. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ESHud.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self.view showHUD:@"fssdsf"];
    [self.view es_showHint:@"fsfdsfsfs"];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
