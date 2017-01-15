//
//  ViewController.m
//  CCAlert
//
//  Created by mac on 2017/1/10.
//  Copyright © 2017年 CYC. All rights reserved.
//

#import "ViewController.h"
#import "CCAlert.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *input;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    
    
    
}

- (IBAction)show:(id)sender {
    
    [CCAlert alertWithTitle:@"今天扛把子很刚"
                 sureAction:^{
                 
                 } cancelAction:^{
                                      
                 }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
