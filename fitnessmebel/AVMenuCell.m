//
//  AVMenuCell.m
//  fitnessmebel
//
//  Created by aiuar on 11.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//

#import "AVMenuCell.h"
#import <Masonry.h>

@implementation AVMenuCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if([super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        // Left image & label
        self.iconImageView = [[UIImageView alloc] init];
        
        self.menuItemLabel = [[UILabel alloc] init];
        self.menuItemLabel.textAlignment = NSTextAlignmentLeft;
        self.menuItemLabel.font = [UIFont systemFontOfSize: 14.f];
        
        // Adding views
        UIView *superview = self.contentView;
        
        [superview addSubview: self.iconImageView];
        [superview addSubview: self.menuItemLabel];
        
        // Masonry
        [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.height.equalTo(@(60));
            make.width.equalTo(@(60));
            
            make.centerY.equalTo(@((superview.center.y / 2) - 10)); // cell height 100, imageView 60, +- 10 a top/bot
            make.left.equalTo(superview).with.offset(10);
        }];
        
        [self.menuItemLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.height.equalTo(@(30));
            
            make.centerY.equalTo(@((superview.center.y / 2) - 10));
            make.left.equalTo(self.iconImageView.mas_right).with.offset(5);
            make.right.equalTo(superview).with.offset(10);
        }];
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
