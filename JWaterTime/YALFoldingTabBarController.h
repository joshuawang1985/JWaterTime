//
//  YALFoldingTabBarController.h
//  JWaterTime
//
//  Created by 王昊 on 16/7/7.
//  Copyright © 2016年 王昊. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <YALFoldingTabBar.h>

@interface YALFoldingTabBarController : UITabBarController

@property (nonatomic, copy) NSArray *leftBarItems;
@property (nonatomic, copy) NSArray *rightBarItems;
@property (nonatomic, strong) UIImage *centerButtonImage;

@property (nonatomic, assign) CGFloat tabBarViewHeight;

@property (nonatomic, strong) YALFoldingTabBar *tabBarView;

@end
