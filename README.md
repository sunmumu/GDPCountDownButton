# GDPCountDownButton

验证码倒计时按钮

## 效果
![GDPCountDownButton](https://github.com/sunmumu/GDPCountDownButton/blob/main/Demo/%E6%95%88%E6%9E%9C.GIF?raw=true)

## Use
法一 cocopods引用
pod 'GDPCountDownButton'

法二 文件拖入项目中
1. 下载GDPCountDownButton框架,把GDPCountDownButton文件夹拷贝到项目中. 
2. 在控制器中#import "GDPCountDownButton".

## 创建方法

```
GDPCountDownButton *button = [GDPCountDownButton buttonWithType:UIButtonTypeCustom];

button.btnNormalColor=[self convertHexToRGB:@"2da4f1"];
button.btnCountDownColor=[self convertHexToRGB:@"b9b9b9"];

[button setTitle:@"获取验证码" forState:UIControlStateNormal];
button.titleLabel.font=[UIFont systemFontOfSize:16];
button.normalColor=[self convertHexToRGB:@"ffffff"];
button.countDownColor=[self convertHexToRGB:@"ffffff"];

button.frame = CGRectMake(100, 100, 120, 60);
    
[self.view addSubview:button];
[button addClickBlock:^(GDPCountDownButton * _Nonnull sender) {
	[sender startWithSecond:60];
    } finishedBlock:^NSString * _Nullable(GDPCountDownButton * _Nonnull sender, int second) {
	return @"获取验证码";
}];
```
   
## License

GDPCountDownButton is released under a MIT License. See LICENSE file for details.

