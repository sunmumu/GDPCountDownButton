//
//  GDPCountDownButton.h
//  GDPKit
//
//  Created by ule on 2020/10/27.
//  Copyright © 2020 sunmumu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class GDPCountDownButton;
//按钮点击事件的block
typedef void(^ClickBlock)(GDPCountDownButton *sender);
typedef NSString *_Nullable(^FinishedBlock)(GDPCountDownButton *sender,int second);

@interface GDPCountDownButton : UIButton

//按钮正常的背景色
@property (strong, nonatomic) UIColor *btnNormalColor;
//按钮倒计时的背景色
@property (strong, nonatomic) UIColor *btnCountDownColor;

//正常显示的字体颜色
@property (strong, nonatomic) UIColor *normalColor;
//倒计时显示的字体颜色
@property (strong, nonatomic) UIColor *countDownColor;
//倒计时时的显示前缀
@property (copy, nonatomic) NSString *preTitle;

//秒数
@property (assign, nonatomic) int     second;
//记录定时器是否仍在工作
@property (nonatomic, assign)BOOL isCounting;

//设置开始的秒数
- (void)startWithSecond:(int)totalSecond;
//停止
- (void)stop;
- (void)addClickBlock:(ClickBlock)clickBlock finishedBlock:(FinishedBlock)finishedBlcok;

@end

NS_ASSUME_NONNULL_END
