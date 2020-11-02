//
//  CarModel.h
//  DemoFramework
//
//  Created by 何强 on 2020/10/27.
//

#import <JSONModel/JSONModel.h>

NS_ASSUME_NONNULL_BEGIN

@interface CarModel : JSONModel
@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString *price;

@end

NS_ASSUME_NONNULL_END
