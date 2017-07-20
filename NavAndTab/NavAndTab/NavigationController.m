//
//  NavigationController.m
//  UINav+UITab
//
//  Created by lish on 2017/7/20.
//  Copyright © 2017年 lish. All rights reserved.
//

#import "NavigationController.h"
#import "NavAndTabDefine.h"
#import "UINavigationController+FDFullscreenPopGesture.h"
@interface NavigationController ()

@end

@implementation NavigationController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setNavTitleAttrbutesStyle];

}

- (void)setNavTitleAttrbutesStyle {
    self.navigationBar.translucent = NO;
    self.navigationBar.barTintColor = NAV_BAR_TINT_COLOR;
    self.navigationBar.tintColor = NAV_TINT_COLOR;
    self.fd_fullscreenPopGestureRecognizer.enabled=YES;
    [self.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                NAV_TITLE_COLOR, NSForegroundColorAttributeName,NAV_TITLE_FONT, NSFontAttributeName,
                                                nil]];
    
    
    self.navigationBar.translucent = NO;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    //判断self.childViewControllers是不是拿到所有子控制器，self.childViewControllers.count为0时，只有子控制器，干掉返回按钮
    if (self.childViewControllers.count > 0) {
        //自定义返回按钮
        UIButton *returnBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //正常下image
        [returnBtn setImage:[UIImage imageNamed:NAV_BACK_NAME] forState:UIControlStateNormal];
        //高亮下image
        [returnBtn setImage:[UIImage imageNamed:NAV_BACK_NAME] forState:UIControlStateHighlighted];
     
        //设置按钮位置大小,注意这里位置无效果
        [returnBtn setFrame:CGRectMake(0, 0, 70, 20)];
        //按钮内部对齐
        [returnBtn setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
        //设置图片内部位置
        [returnBtn setContentEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
        //添加点击事件
        [returnBtn addTarget:self action:@selector(returnBtnClick) forControlEvents:UIControlEventTouchUpInside];
        //当视图推送时隐藏tabbar
        viewController.hidesBottomBarWhenPushed = YES;
        //自定义push视图的leftBarButtonItem
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:returnBtn];
    }
    //子控制器通过这个方法推送视图
    [super pushViewController:viewController animated:animated];
}

- (void)returnBtnClick
{
    [self popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
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
