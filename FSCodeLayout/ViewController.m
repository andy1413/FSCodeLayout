//
//  ViewController.m
//  FSCodeLayout
//
//  Created by 王方帅 on 15/9/22.
//  Copyright (c) 2015年 王方帅. All rights reserved.
//

#import "ViewController.h"
#import "FSCodeLayout.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [_introduceLabel setWidthToAutoresizeScreenWidth];
    [_introduceLabel setAutoresizeWithLimitWidth:_introduceLabel.width];
    _buttonView.y = [_introduceLabel getFrame_Bottom]+20;
    [_buttonView setWidthToAutoresizeScreenWidth];
    
    UIButton *btn1 = (UIButton *)[_buttonView viewWithTag:1000];
    UIButton *btn2 = (UIButton *)[_buttonView viewWithTag:1001];
    UIButton *btn3 = (UIButton *)[_buttonView viewWithTag:1002];
    btn1.width = _buttonView.width/3;
    btn2.width = _buttonView.width/3;
    btn3.width = _buttonView.width/3;
    btn2.x = [btn1 getFrame_right];
    btn3.x = [btn2 getFrame_right];
    _thisIsEnd.y = [_buttonView getFrame_Bottom]+20;
    [_thisIsEnd setWidthToAutoresizeScreenWidth];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
