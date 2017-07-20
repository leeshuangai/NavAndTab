//
//  UIWindow+SwichController.m
//  UINav+UITab
//
//  Created by lish on 2017/7/20.
//  Copyright © 2017年 lish. All rights reserved.
//

#import "UIWindow+SwichController.h"

#import "TabBarViewController.h"
@implementation UIWindow (SwichController)
- (void)swichRootController {

    self.rootViewController = [[TabBarViewController alloc] init];
    
}



@end
