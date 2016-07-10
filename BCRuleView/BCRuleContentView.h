//
//  BCRuleContentView.h
//  BCRuleView
//
//  Created by 700 on 16/7/9.
//  Copyright © 2016年 少先队. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    BCRuleTypeHorizontal,
    BCRuleTypeVertical
}BCRuleType;

@interface BCRuleContentView : UIView

-(instancetype)initWithFrame:(CGRect)frame
                    minScale:(CGFloat)minScale
               minScaleWidth:(CGFloat)minScaleWidth
                     minVale:(CGFloat)minValue
                    maxValue:(CGFloat)maxVale
                  startIndex:(CGFloat)startIndex
            shortSymbolColor:(UIColor *)shortSymbolColor
           middleSymbolColor:(UIColor *)middleSymbolColor
             longSymbolColor:(UIColor *)longSymbolColor
           shortSymbolHeight:(CGFloat)shortSymbolHeight
          middleSymbolHeight:(CGFloat)middleSymbolHeight
            longSymbolHeight:(CGFloat)longSymbolHeight
                   textColor:(UIColor *)textColor
                    textFont:(UIFont *)textFont
                    ruleType:(BCRuleType)ruleType;
@end
