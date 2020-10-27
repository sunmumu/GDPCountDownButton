//
//  ViewController.m
//  GDPCountDownButton
//
//  Created by ule on 2020/10/27.
//

#import "ViewController.h"
#import "GDPCountDownButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void)setupUI {
    GDPCountDownButton *button = [GDPCountDownButton buttonWithType:UIButtonTypeCustom];
    button.btnNormalColor=[self convertHexToRGB:@"2da4f1"];
    button.btnCountDownColor=[self convertHexToRGB:@"b9b9b9"];
    [button setTitle:@"获取验证码" forState:UIControlStateNormal];
    button.titleLabel.font=[UIFont systemFontOfSize:16];
    button.normalColor=[self convertHexToRGB:@"ffffff"];
    button.countDownColor=[self convertHexToRGB:@"ffffff"];
    button.frame = CGRectMake(100, 260, 120, 60);
    
    [self.view addSubview:button];
    [button addClickBlock:^(GDPCountDownButton * _Nonnull sender) {
        [sender startWithSecond:60];
    } finishedBlock:^NSString * _Nullable(GDPCountDownButton * _Nonnull sender, int second) {
        return @"获取验证码";
    }];
}

- (UIColor *)convertHexToRGB:(NSString *)hexString{
    NSString *str;
    if ([hexString hasPrefix:@"0x"] || [hexString hasPrefix:@"0X"]) {
        str=[[NSString alloc] initWithFormat:@"%@",hexString];
    }else {
        str=[[NSString alloc] initWithFormat:@"0x%@",hexString];
    }
    
    int rgb;
    sscanf([str cStringUsingEncoding:NSUTF8StringEncoding], "%i", &rgb);
    int red=rgb/(256*256)%256;
    int green=rgb/256%256;
    int blue=rgb%256;
    UIColor *color=[UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1.0];
    return color;
}

@end
