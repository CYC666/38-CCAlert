//
//  CCAlert.h
//  CCAlert
//
//  Created by mac on 2017/1/10.
//  Copyright © 2017年 CYC. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^CCAlertBlock)();

@interface CCAlert : UIView


+ (instancetype)alertWithTitle:(NSString *)title
                    sureAction:(CCAlertBlock)sureBlock
                  cancelAction:(CCAlertBlock)cancelBlock;

- (void)show;

@end
