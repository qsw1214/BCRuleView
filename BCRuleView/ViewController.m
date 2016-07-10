//
//  ViewController.m
//  BCRuleView
//
//  Created by 700 on 16/7/9.
//  Copyright © 2016年 少先队. All rights reserved.
//

#import "ViewController.h"
#import "BCRuleView.h"

@interface ViewController ()<UIScrollViewDelegate>
{
    BCRuleView *ruleView;
    BCRuleView *ruleView2;
}

@property (weak, nonatomic) IBOutlet UILabel *yearLabel;

@property (weak, nonatomic) IBOutlet UILabel *testlabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ruleView = [[BCRuleView alloc]initWithFrame:CGRectMake(50, 200, [UIScreen mainScreen].bounds.size.width - 100, 70)];
    ruleView.delegate = self;
    ruleView.backgroundColor = [UIColor yellowColor];
    
    ruleView.shortSymbolColor = [UIColor redColor];
    ruleView.middleSymbolColor = [UIColor whiteColor];
    ruleView.longSymbolColor = [UIColor blueColor];
    ruleView.textColor = [UIColor whiteColor];
    ruleView.textFont = [UIFont systemFontOfSize:20];
    ruleView.longSymbolHeight = 40;
    
    [ruleView setRangeFrom:20 to:200 minScale:0.1 minScaleWidth:10];
    ruleView.currentValue = 100;
    [self.view addSubview:ruleView];
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 150, 2, 170)];
    view.backgroundColor = [UIColor blueColor];
    view.center = ruleView.center;
    [self.view addSubview:view];
    
    
    
    
    
    ruleView2 = [[BCRuleView alloc]initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width - 70)/2.0, 400, 70, 150) ruleType:BCRuleTypeVertical];
    ruleView2.delegate = self;
    ruleView2.backgroundColor = [UIColor yellowColor];
    [ruleView2 setRangeFrom:20 to:200 minScale:1 minScaleWidth:10];
    ruleView2.currentValue = 100;
    [self.view addSubview:ruleView2];
    
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 2)];
    view2.backgroundColor = [UIColor blueColor];
    view2.center = ruleView2.center;
    [self.view addSubview:view2];
    
    
    
    
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    self.yearLabel.text = [NSString stringWithFormat:@"%.1f",ruleView.currentValue];
    
    self.testlabel.text = [NSString stringWithFormat:@"%.0f",ruleView2.currentValue];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    
    self.yearLabel.text = [NSString stringWithFormat:@"%.1f",ruleView.currentValue];
    
    self.testlabel.text = [NSString stringWithFormat:@"%.0f",ruleView2.currentValue];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
