//
//  CarTableViewCell.m
//  DemoFramework
//
//  Created by 何强 on 2020/10/27.
//

#import "CarTableViewCell.h"

@implementation CarTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (void)showCellForCarModel:(CarModel *)model {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSURL *bundleURL = [bundle URLForResource:@"Haizeiwang" withExtension:@"bundle"];
    NSBundle *resourceBundle = [NSBundle bundleWithURL: bundleURL];
    UIImage *image = [UIImage imageNamed:@"LuFei" inBundle:resourceBundle compatibleWithTraitCollection:nil];
//    UIImage *image = [UIImage imageNamed:@"Haizeiwang.bundle/LuFei" inBundle:bundle compatibleWithTraitCollection:nil];
    self.imageView.image = image;
    self.downLabel.text = model.price;
    self.upLabel.text = model.name;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
