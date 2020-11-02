//
//  CarNetWork.h
//  DemoFramework
//
//  Created by 何强 on 2020/10/27.
//

#import <Foundation/Foundation.h>




NS_ASSUME_NONNULL_BEGIN

@interface CarNetWork : NSObject

//get请求
+(void)getWithUrlString;
 
 
//post请求
+(void)postWithUrlString;

@end

NS_ASSUME_NONNULL_END
