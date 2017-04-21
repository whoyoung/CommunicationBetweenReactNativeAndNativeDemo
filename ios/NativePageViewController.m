//
//  NativePageViewController.m
//  CommunicationBetweenReactNativeAndNativeDemo
//
//  Created by young on 2017/4/18.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "NativePageViewController.h"
#import "ReactNativeContainerViewController.h"

@interface NativePageViewController ()

@end

@implementation NativePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBarHidden = NO;
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
    self.navigationController.navigationItem.leftBarButtonItems = @[backItem];
  
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    UIButton *invokeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [invokeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [invokeBtn setTitle:@"toReactNativePage" forState:UIControlStateNormal];
    [invokeBtn setBackgroundColor:[UIColor colorWithRed:38/255.0 green:184/255.0 blue:242/255.0 alpha:1]];
    [invokeBtn addTarget:self action:@selector(invokeReactNativePage) forControlEvents:UIControlEventTouchUpInside];
    invokeBtn.frame = CGRectMake((screenSize.width-200)/2.0, (screenSize.height-64)/2.0, 200, 40);
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
    ReactNativeContainerViewController *containerVC = [[ReactNativeContainerViewController alloc] init];
    [self.navigationController pushViewController:containerVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
