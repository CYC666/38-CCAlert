//
//  CCAlert.m
//  CCAlert
//
//  Created by mac on 2017/1/10.
//  Copyright © 2017年 CYC. All rights reserved.
//

#import "CCAlert.h"

#define kScreenHeight [UIScreen mainScreen].bounds.size.height                          // 屏高
#define kScreenWidth [UIScreen mainScreen].bounds.size.width                            // 屏宽

#define kCCAlertWidth   270     // 宽
#define kCCAlertHeight  100     // 高

@interface CCAlert ()

@property (strong, nonatomic) UILabel *titleLabel;
@property (strong, nonatomic) UIButton *sureButton;
@property (strong, nonatomic) UIButton *cancelButton;
@property (copy, nonatomic) CCAlertBlock sureBlock;
@property (copy, nonatomic) CCAlertBlock cancelBlock;

@end

@implementation CCAlert

+ (instancetype)alertWithTitle:(NSString *)title sureAction:(CCAlertBlock)sureBlock cancelAction:(CCAlertBlock)cancelBlock {

    CCAlert *view = [[[CCAlert class] alloc] initWithFrame:[UIScreen mainScreen].bounds];
    view.backgroundColor = [UIColor colorWithWhite:0 alpha:.3];
    view.sureBlock = sureBlock;
    view.cancelBlock = cancelBlock;
    return view;

}

- (instancetype)initWithFrame:(CGRect)frame {

    if (self = [super initWithFrame:frame]) {
        self.alpha = 0;
    }
    return self;

}

- (void)creatSubviews {

    UIView *mainView = [[UIView alloc] initWithFrame:CGRectMake((kScreenWidth - kCCAlertWidth)/2.0, (kScreenHeight - kCCAlertHeight)/2.0, kCCAlertWidth, kCCAlertHeight)];
    mainView.backgroundColor = [UIColor colorWithWhite:1 alpha:.9];
    [self addSubview:mainView];
    
    

}

- (void)show {

    [[UIApplication sharedApplication].keyWindow addSubview:self];
    [UIView animateWithDuration:.35
                     animations:^{
                         self.alpha = 1;
                     }];

}





































@end
