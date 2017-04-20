//
//  ReactNativeContainerViewController.m
//  CommunicationBetweenReactNativeAndNativeDemo
//
//  Created by young on 2017/4/20.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "ReactNativeContainerViewController.h"
#import <React/RCTRootView.h>
#import <React/RCTBundleURLProvider.h>

@interface ReactNativeContainerViewController ()
@property (nonatomic,strong) RCTRootView *rootView;
@end

@implementation ReactNativeContainerViewController

- (RCTRootView*)rootView{
  if(!_rootView){
    NSDictionary *config = [NSMutableDictionary new];
    [config setValue:@"fromNative" forKey:@"from"];
    
    NSURL *jsCodeLocation;
    jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index.ios" fallbackResource:nil];
      RCTRootView * rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation moduleName:@"ReactNativeComponent" initialProperties:config launchOptions:nil];
      rootView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    rootView.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:(_rootView = rootView)];
  }
  return _rootView;
}
- (void)viewDidLoad {
  [super viewDidLoad];
  self.view = self.rootView;
}
- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
  self.navigationController.navigationBarHidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated {
  [super viewWillDisappear:animated];
  self.navigationController.navigationBarHidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
