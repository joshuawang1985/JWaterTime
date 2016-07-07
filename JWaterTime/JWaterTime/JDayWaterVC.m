//
//  JDayWaterVC.m
//  JWaterTime
//
//  Created by 王昊 on 16/7/7.
//  Copyright © 2016年 王昊. All rights reserved.
//

#import "JDayWaterVC.h"

@interface JDayWaterVC ()
@property (strong, nonatomic) IBOutlet UIView *JBackView;

@end

@implementation JDayWaterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setBackViewRadius];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setBackViewRadius
{
    self.JBackView.layer.masksToBounds = YES;
    self.JBackView.layer.cornerRadius = 20.0;
    self.JBackView.layer.borderWidth = 1.0;
    self.JBackView.layer.borderColor = [[UIColor whiteColor] CGColor];
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
