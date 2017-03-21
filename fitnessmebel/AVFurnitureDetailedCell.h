//
//  AVFurnitureDetailedCell.h
//  fitnessmebel
//
//  Created by aiuar on 10.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AVFurnitureDetailedCell : UITableViewCell

@property (strong, nonatomic) UIImageView *iconImageView;
@property (strong, nonatomic) UILabel *iconLabel;

@property (strong, nonatomic) UILabel *priceLabel;
@property (strong, nonatomic) UILabel *sizeLabel;
@property (strong, nonatomic) UILabel *waterLabel;

@property (strong, nonatomic) UITextField *priceTextField;
@property (strong, nonatomic) UITextField *sizeTextField;
@property (strong, nonatomic) UITextField *waterTextField;

@end
