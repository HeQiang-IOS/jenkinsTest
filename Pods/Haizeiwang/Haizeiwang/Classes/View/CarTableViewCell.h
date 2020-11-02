//
//  CarTableViewCell.h
//  DemoFramework
//
//  Created by 何强 on 2020/10/27.
//

#import <UIKit/UIKit.h>
#import "CarModel.h"


NS_ASSUME_NONNULL_BEGIN

@interface CarTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *upLabel;
@property (weak, nonatomic) IBOutlet UILabel *downLabel;

- (void)showCellForCarModel:(CarModel *)model;
@end

NS_ASSUME_NONNULL_END
