//
//  FirstViewController.m
//  UINav+UITab
//
//  Created by lish on 2017/7/20.
//  Copyright © 2017年 lish. All rights reserved.
//

#import "FirstViewController.h"

#import "SecondViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    
    UIButton *bu = [UIButton buttonWithType:UIButtonTypeCustom];
    [bu setTitle:@"跳转" forState:0];
    bu.frame  = CGRectMake(100, 200, 50, 50);
    [self.view addSubview:bu];
    [bu addTarget:self action:@selector(tap:) forControlEvents:UIControlEventTouchUpInside];
    bu.backgroundColor = [UIColor whiteColor];
    [bu setTitleColor:[UIColor blackColor] forState:0];
    
}
- (void)tap:(UIButton *)tap {
    
    SecondViewController *VC = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:VC animated:YES];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
