//
//  CarNetWork.m
//  DemoFramework
//
//  Created by 何强 on 2020/10/27.
//

#import "CarNetWork.h"
#import <HQAFNetworking/HQAFNetworking.h>

@implementation CarNetWork

//GET请求
+ (void)getWithUrlString {
    [HQAFNetworking getWithUrlString:@"" success:^(id data) {
        NSLog(@"%@",data);
    } failure:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}
 
//POST请求
+ (void)postWithUrlString {
    NSDictionary *dic = @{
        @"aa":@"11"
    };
    [HQAFNetworking postWithUrlString:@"" parameters:dic success:^(id data) {
        NSLog(@"%@",data);
    } failure:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}

@end
