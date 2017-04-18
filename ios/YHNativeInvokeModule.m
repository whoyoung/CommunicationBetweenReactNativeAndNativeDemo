//
//  YHNativeInvokeModule.m
//  CommunicationBetweenReactNativeAndNativeDemo
//
//  Created by young on 2017/4/18.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "YHNativeInvokeModule.h"
#import "NativePageViewController.h"

@implementation YHNativeInvokeModule
RCT_EXPORT_MODULE();
- (dispatch_queue_t)methodQueue {
  return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(jumpNativePage:(NSString *)from) {
  NativePageViewController *nativeVC = [[NativePageViewController alloc] init];
  nativeVC.title = from;
  UINavigationController *navController = [[UINavigationController alloc] initWithNavigationBarClass:[UINavigationBar class] toolbarClass:nil];
  navController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:17]};
  navController.navigationBar.barTintColor = [UIColor blueColor];
  
  navController.viewControllers = @[nativeVC];
  
  [[[UIApplication sharedApplication] delegate].window.rootViewController presentViewController:navController animated:YES completion:nil];
  
  
}
@end
