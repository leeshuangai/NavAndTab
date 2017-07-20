//
//  TabBarViewController.m
//  UINav+UITab
//
//  Created by lish on 2017/7/20.
//  Copyright © 2017年 lish. All rights reserved.
//

#import "TabBarViewController.h"

#import "NavigationController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"

#import "NavAndTabDefine.h"


@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self setTabBarTitleAttrbutesStyle];
    [self initChildVC];
   
}

- (void)initChildVC {
    
    NSArray *controllerArr = @[
                                 @"FirstViewController",
                                 @"SecondViewController",
                                 @"ThreeViewController",
                                 @"FourViewController"
                                 ];
                                
    
    //TabItem 的图片
    NSArray *imageArr0 = @[@"tabBar_mainPage",@"tabBar_myOrder", @"tabBar_nearbyTruck" ,@"tabBar_personalCenter"];
    //TabItem的标题
    NSArray *titleArr = @[@"首页",@"附近",@"订单",@"我的"];
    
 
    [controllerArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        [self setChildVC:[[NSClassFromString(obj) alloc] init] title:titleArr[idx] imageName:imageArr0[idx]];
        
    }];
    
}

#pragma mark - 设置tabbar属性
- (void)setTabBarTitleAttrbutesStyle {
    
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    //通常字体大小
    attrs[NSFontAttributeName] = TAB_TITLE_FONT;
    //通常字体颜色
    attrs[NSForegroundColorAttributeName] = TAB_TITLE_NORMAL_COLOR;
    
    NSMutableDictionary *selectAttrs = [NSMutableDictionary dictionary];
    //选中字体大小
    selectAttrs[NSFontAttributeName] = TAB_TITLE_FONT;
    //选中字体颜色
    selectAttrs[NSForegroundColorAttributeName] = TAB_TITLE_SELECTED_COLOR;
    
    
    UITabBarItem *item = [UITabBarItem appearance];
    //tabbar通常
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    //选中
    [item setTitleTextAttributes:selectAttrs forState:UIControlStateSelected];
    

    self.tabBar.barTintColor = TAB_BACK_CORLOR;
    self.tabBar.translucent = NO;
    
}

#pragma mark - 导航子视图封装
- (void)setChildVC:(UIViewController *)ChildVC title:(NSString *)title imageName:(NSString *)imageName {
    
    NavigationController *nav = [[NavigationController alloc]initWithRootViewController:ChildVC];
    nav.tabBarItem.title = title;
    nav.tabBarItem.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@%@",imageName,@"_default"]];
    nav.tabBarItem.selectedImage = [UIImage imageNamed:[NSString stringWithFormat:@"%@%@",imageName,@"_selected"]];
    nav.view.backgroundColor = NAV_VIEW_COLOR;
    [self addChildViewController:nav];
    
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
