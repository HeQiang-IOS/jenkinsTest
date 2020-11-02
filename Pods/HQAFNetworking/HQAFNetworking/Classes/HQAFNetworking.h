//
//  CarNetWork.h
//  DemoFramework
//
//  Created by 何强 on 2020/10/27.
//

#import <Foundation/Foundation.h>


typedef void(^HttpSuccess)(id data);
typedef void(^HttpFailure)(NSError * error);

NS_ASSUME_NONNULL_BEGIN

@interface HQAFNetworking : NSObject

//get请求
+(void)getWithUrlString:(NSString *)urlString success:(HttpSuccess)success failure:(HttpFailure)failure;
 
 
//post请求
+(void)postWithUrlString:(NSString *)urlString parameters:(NSDictionary *)parameters success:(HttpSuccess)success failure:(HttpFailure)failure;

@end

NS_ASSUME_NONNULL_END
