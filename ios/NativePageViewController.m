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
    UIButton *simpleBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    simpleBtn.tag = 0;
    [simpleBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [simpleBtn setTitle:@"toSimpleRNPage" forState:UIControlStateNormal];
    [simpleBtn setBackgroundColor:[UIColor colorWithRed:38/255.0 green:184/255.0 blue:242/255.0 alpha:1]];
    [simpleBtn addTarget:self action:@selector(invokeReactNativePage:) forControlEvents:UIControlEventTouchUpInside];
    simpleBtn.frame = CGRectMake((screenSize.width-200)/2.0, (screenSize.height-64-150)/2.0, 200, 40);
    [self.view addSubview:simpleBtn];
  
    UIButton *invokeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    invokeBtn.tag = 1;
    [invokeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [invokeBtn setTitle:@"toRNPage" forState:UIControlStateNormal];
    [invokeBtn setBackgroundColor:[UIColor colorWithRed:38/255.0 green:184/255.0 blue:242/255.0 alpha:1]];
    [invokeBtn addTarget:self action:@selector(invokeReactNativePage:) forControlEvents:UIControlEventTouchUpInside];
    invokeBtn.frame = CGRectMake((screenSize.width-200)/2.0, CGRectGetMaxY(simpleBtn.frame)+10, 200, 40);
    [self.view addSubview:invokeBtn];
  
    UIButton *navigatorBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    navigatorBtn.tag = 2;
    [navigatorBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [navigatorBtn setTitle:@"toNavigatorRNPage" forState:UIControlStateNormal];
    [navigatorBtn setBackgroundColor:[UIColor colorWithRed:38/255.0 green:184/255.0 blue:242/255.0 alpha:1]];
    [navigatorBtn addTarget:self action:@selector(invokeReactNativePage:) forControlEvents:UIControlEventTouchUpInside];
    navigatorBtn.frame = CGRectMake((screenSize.width-200)/2.0, CGRectGetMaxY(invokeBtn.frame)+10, 200, 40);
    [self.view addSubview:navigatorBtn];
}
- (void)viewWillDisappear:(BOOL)animated {
  [super viewWillDisappear:animated];
  self.navigationController.navigationBarHidden = YES;
}

- (void)goBack {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)invokeReactNativePage:(UIButton *)btn {
    ReactNativeContainerViewController *containerVC = [[ReactNativeContainerViewController alloc] init];
    containerVC.type = btn.tag;
    [self.navigationController pushViewController:containerVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
