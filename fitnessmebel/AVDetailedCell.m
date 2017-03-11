//
//  AVDetailedCell.m
//  fitnessmebel
//
//  Created by aiuar on 10.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//

#import "AVDetailedCell.h"
#import <Masonry.h>

@implementation AVDetailedCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if([super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        // Left image & label
        self.iconImageView = [[UIImageView alloc] init];
        
        self.iconLabel = [[UILabel alloc] init];
        self.iconLabel.textAlignment = NSTextAlignmentCenter;
        self.iconLabel.font = [UIFont systemFontOfSize: 14.f];
        
        // Right price label & text
        self.priceLabel = [[UILabel alloc] init];
        self.priceLabel.textAlignment = NSTextAlignmentLeft;
        self.priceLabel.font = [UIFont systemFontOfSize: 12.f];
        
        self.priceTextField = [[UITextField alloc] init];
        self.priceTextField.textAlignment = NSTextAlignmentLeft;
        self.priceTextField.font = [UIFont systemFontOfSize: 12.f];
        self.priceTextField.userInteractionEnabled = NO;
        
        // Right size label & text
        self.sizeLabel = [[UILabel alloc] init];
        self.sizeLabel.textAlignment = NSTextAlignmentLeft;
        self.sizeLabel.font = [UIFont systemFontOfSize: 12.f];
        
        self.sizeTextField = [[UITextField alloc] init];
        self.sizeTextField.textAlignment = NSTextAlignmentLeft;
        self.sizeTextField.font = [UIFont systemFontOfSize: 12.f];
        self.sizeTextField.userInteractionEnabled = NO;
        
        // Right water label & text
        self.waterLabel = [[UILabel alloc] init];
        self.waterLabel.textAlignment = NSTextAlignmentLeft;
        self.waterLabel.font = [UIFont systemFontOfSize: 12.f];
        
        self.waterTextField = [[UITextField alloc] init];
        self.waterTextField.textAlignment = NSTextAlignmentLeft;
        self.waterTextField.font = [UIFont systemFontOfSize: 12.f];
        self.waterTextField.userInteractionEnabled = NO;
        
        // Adding views
        UIView *superview = self.contentView;
        
        [superview addSubview: self.iconImageView];
        [superview addSubview: self.iconLabel];
        
        [superview addSubview: self.priceLabel];
        [superview addSubview: self.priceTextField];
        
        [superview addSubview: self.sizeLabel];
        [superview addSubview: self.sizeTextField];
        
        [superview addSubview: self.waterLabel];
        [superview addSubview: self.waterTextField];
        
        // Masonry
        
    }
    
    return self;
}

- (BOOL)needsUpdateConstraints {
    return YES;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
