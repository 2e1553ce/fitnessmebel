//
//  AVMenuCell.m
//  fitnessmebel
//
//  Created by aiuar on 10.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//

#import "AVMenuCell.h"
#import <Masonry.h>

@implementation AVMenuCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if([super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
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
