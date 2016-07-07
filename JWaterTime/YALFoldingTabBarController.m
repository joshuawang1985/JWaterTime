//
//  YALFoldingTabBarController.m
//  JWaterTime
//
//  Created by 王昊 on 16/7/7.
//  Copyright © 2016年 王昊. All rights reserved.
//

#import "YALFoldingTabBarController.h"

@interface YALFoldingTabBarController ()

@end

@implementation YALFoldingTabBarController

#pragma mark - ******初始化******

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.tabBar setBackgroundImage:[[UIImage alloc] init]];
    [self.tabBar setShadowImage:[[UIImage alloc] init]];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    self.tabBarView.frame = self.tabBar.bounds;
    
    for (UIView *view  in  self.tabBar.subviews) {
        [view removeFromSuperview];
    }
    
    [self.tabBar addSubview:self.tabBarView];
}

- (void)setSelectedIndex:(NSUInteger)selectedIndex
{
    [super setSelectedIndex:selectedIndex];
    self.tabBarView.selectedTabBarItemIndex = selectedIndex;
    [self.tabBarView setNeedsLayout];
}

- (void)setTabBarViewHeight:(CGFloat)tabBarViewHeight
{
    CGRect newFrame = self.tabBar.frame;
    newFrame.size.height = tabBarViewHeight;
    [self.tabBar setFrame:newFrame];
}

- (CGFloat)tabBarViewHeight
{
    return self.tabBar.frame.size.height;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - ******private******
- (void)setupTabBarViewHeight
{
    for (UIView *view in self.tabBar.subviews) {
        [view removeFromSuperview];
    }
    
    self.tabBarView = [[YALFoldingTabBar alloc] initWithController:self];
    [self.tabBar addSubview:self.tabBarView];
}

#pragma mark - ******YALTabBarDataSource******
- (NSArray *)leftTabBarItemsInTabBarView:(YALFoldingTabBar *)tabBarView
{
    return self.leftBarItems;
}

- (NSArray *)rightTabBarItemsInTabBarView:(YALFoldingTabBar *)tabBarView
{
    return self.rightBarItems;
}

- (UIImage *)centerImageInTabBarView:(YALFoldingTabBar *)tabBarView
{
    return self.centerButtonImage;
}

#pragma mark - ******YALTabBarDelegate******

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
