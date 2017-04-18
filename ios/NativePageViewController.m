//
//  NativePageViewController.m
//  CommunicationBetweenReactNativeAndNativeDemo
//
//  Created by young on 2017/4/18.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "NativePageViewController.h"

@interface NativePageViewController ()

@end

@implementation NativePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
  
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [backBtn setTitle:@"back" forState:UIControlStateNormal];
    [backBtn setBackgroundColor:[UIColor greenColor]];
    [backBtn addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
    backBtn.frame = CGRectMake(100, 100, 100, 40);
    [self.view addSubview:backBtn];
  
    UIButton *invokeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [invokeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [invokeBtn setTitle:@"invoke" forState:UIControlStateNormal];
    [invokeBtn setBackgroundColor:[UIColor greenColor]];
    [invokeBtn addTarget:self action:@selector(invokeReactNativePage) forControlEvents:UIControlEventTouchUpInside];
    invokeBtn.frame = CGRectMake(100, 200, 100, 40);
    [self.view addSubview:invokeBtn];
}

- (void)goBack {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)invokeReactNativePage {
    NSLog(@"lalalla");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
