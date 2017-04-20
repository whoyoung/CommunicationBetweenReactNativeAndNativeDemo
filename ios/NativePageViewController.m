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
    self.navigationController.navigationBarHidden = NO;
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
    self.navigationController.navigationItem.leftBarButtonItems = @[backItem];
  
    UIButton *invokeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [invokeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [invokeBtn setTitle:@"invoke" forState:UIControlStateNormal];
    [invokeBtn setBackgroundColor:[UIColor greenColor]];
    [invokeBtn addTarget:self action:@selector(invokeReactNativePage) forControlEvents:UIControlEventTouchUpInside];
    invokeBtn.frame = CGRectMake(100, 200, 100, 40);
    [self.view addSubview:invokeBtn];
}
- (void)viewWillDisappear:(BOOL)animated {
  [super viewWillDisappear:animated];
  self.navigationController.navigationBarHidden = YES;
}

- (void)goBack {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)invokeReactNativePage {
    NSLog(@"lalalla");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
