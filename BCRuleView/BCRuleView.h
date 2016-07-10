//
//  BCRuleView.h
//  BCRuleView
//
//  Created by 700 on 16/7/9.
//  Copyright © 2016年 少先队. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BCRuleContentView.h"

@interface BCRuleView : UIView

-(instancetype)initWithFrame:(CGRect)frame ruleType:(BCRuleType)ruleType;

@property (weak, nonatomic) id<UIScrollViewDelegate> delegate;

@property (nonatomic ,strong) UIColor *shortSymbolColor;
@property (nonatomic ,assign) CGFloat shortSymbolHeight;
@property (nonatomic ,strong) UIColor *middleSymbolColor;
@property (nonatomic ,assign) CGFloat middleSymbolHeight;
@property (nonatomic ,strong) UIColor *longSymbolColor;
@property (nonatomic ,assign) CGFloat longSymbolHeight;
@property (nonatomic ,strong) UIColor *textColor;
@property (nonatomic ,strong) UIFont  *textFont;

-(void)setRangeFrom:(NSInteger)minVale to:(NSInteger)maxValue minScale:(CGFloat)minScale minScaleWidth:(CGFloat)minScaleWidth;

@property (nonatomic ,assign) CGFloat currentValue;

@end
