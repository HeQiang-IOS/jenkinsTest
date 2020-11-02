//
//  Test2.m
//  DemoFramework
//
//  Created by 何强 on 2020/10/27.
//

#import "Test2.h"
#import "CarViewController.h"
@implementation Test2

- (void)checkTokenForToken:(NSString *)token AndViewController:(UIViewController *)vc ;
{
    if([@"123" isEqualToString:token]){
        
   
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[[CarViewController alloc] init]];
    nav.modalPresentationStyle = UIModalPresentationFullScreen;
    [vc presentViewController:nav animated:YES completion:^{
        
    }];
    }
    else {
        NSLog(@"未授权！！！，请联系*****");
    }
}
@end
