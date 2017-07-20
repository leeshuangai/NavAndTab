//
//  NavAndTabDefine.h
//  UINav+UITab
//
//  Created by lish on 2017/7/20.
//  Copyright © 2017年 lish. All rights reserved.
//

#ifndef NavAndTabDefine_h
#define NavAndTabDefine_h

#define RGBACOLOR(r, g, b, a)   [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
#define SCREEN_WHIDTH ([UIScreen mainScreen].bounds.size.width)

#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

// TabBar 设置
// 字体未选中颜色设置
#define TAB_TITLE_NORMAL_COLOR     [UIColor lightGrayColor]
// 字体选中颜色设置
#define TAB_TITLE_SELECTED_COLOR   RGBACOLOR( 31, 188, 142, 1)
// 字体的大小样式设置
#define TAB_TITLE_FONT             [UIFont systemFontOfSize:12]
// Tab 背景颜色
#define TAB_BACK_CORLOR            [UIColor whiteColor]





// Nav 设置
// Nav返回箭头图片
#define NAV_BACK_NAME               @"navigation_back_white"
#define NAV_BACK_SELECTED_NAME      @"navigation_back_white"

#define NAV_TINT_COLOR               [UIColor whiteColor]
// NAV_Bar 背景色
#define NAV_BAR_TINT_COLOR           RGBACOLOR( 31, 188, 142, 1)

//Nav 标题颜色
#define NAV_TITLE_COLOR              [UIColor whiteColor]
//Nav 标题字体大小
#define NAV_TITLE_FONT               [UIFont systemFontOfSize:18]

#define NAV_VIEW_COLOR               [UIColor whiteColor]
#endif /* NavAndTabDefine_h */
