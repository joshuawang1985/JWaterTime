//
//  JReportChartVC.m
//  JWaterTime
//
//  Created by 王昊 on 16/7/7.
//  Copyright © 2016年 王昊. All rights reserved.
//

#import "JReportChartVC.h"
#import "PPiFlatSegmentedControl.h"
#import "NSString+FontAwesome.h"


@interface JReportChartVC ()
@property (strong, nonatomic) IBOutlet UIView *JBackView;

@property (strong, nonatomic) PPiFlatSegmentedControl *segmentForChart;

@end

@implementation JReportChartVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setBackViewRadius];
    [self setSgementUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setBackViewRadius
{
    self.JBackView.layer.masksToBounds = YES;
    self.JBackView.layer.cornerRadius = 15.0;
    self.JBackView.layer.borderWidth = 1.0;
    self.JBackView.layer.borderColor = [[UIColor whiteColor] CGColor];
    
}

- (void)setSgementUI
{
    NSArray *items = @[[[PPiFlatSegmentItem alloc] initWithTitle:@"周" andIcon:nil],
                       [[PPiFlatSegmentItem alloc] initWithTitle:@"月" andIcon:nil],
                       [[PPiFlatSegmentItem alloc] initWithTitle:@"年" andIcon:nil]];
    _segmentForChart=[[PPiFlatSegmentedControl alloc] initWithFrame:CGRectMake(80, 95, 220, 35)
                                                                                items:items
                                                                         iconPosition:IconPositionRight
                                                                    andSelectionBlock:^(NSUInteger segmentIndex) {
                                                                        if (0 == segmentIndex) {
                                                                            [self segmentIndexChangedIndex:segmentIndex];
                                                                            
                                                                        } else if(1 == segmentIndex){
                                                                           [self segmentIndexChangedIndex:segmentIndex];
                                                                            
                                                                        }else if(2 == segmentIndex){
                                                                            [self segmentIndexChangedIndex:segmentIndex];
                                                                        }
                                                                    }
                                                                       iconSeparation:5];
    _segmentForChart.color=[UIColor colorWithRed:255.0f/255.0 green:255.0f/255.0 blue:255.0f/255.0 alpha:1];
    _segmentForChart.borderWidth=0.5;
    _segmentForChart.borderColor= [UIColor colorWithRed:0.0f/255.0 green:141.0f/255.0 blue:147.0f/255.0 alpha:1];
    _segmentForChart.selectedColor=[UIColor colorWithRed:0.0f/255.0 green:141.0f/255.0 blue:176.0f/255.0 alpha:1];
    _segmentForChart.textAttributes=@{NSFontAttributeName:[UIFont fontWithName:@"HYQiHei" size:16],
                               NSForegroundColorAttributeName:[UIColor blackColor]};
    _segmentForChart.selectedTextAttributes=@{NSFontAttributeName:[UIFont fontWithName:@"HYQiHei" size:16],
                                       NSForegroundColorAttributeName:[UIColor blackColor]};

    [self.view addSubview:_segmentForChart];

}


- (void)segmentIndexChangedIndex:(NSInteger) seIndex
{
    NSLog(@"%ld", seIndex);
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
