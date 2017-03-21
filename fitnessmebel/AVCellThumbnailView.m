//
//  AVCellThumbnailView.m
//  fitnessmebel
//
//  Created by aiuar on 21.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//

#import "AVCellThumbnailView.h"

@interface AVCellThumbnailView ()

@property (strong, nonatomic) UIActivityIndicatorView *activityIndicator;
@property (strong, nonatomic) UIImageView *imageView;
@property (assign, nonatomic) BOOL loaded;

@end

@implementation AVCellThumbnailView

- (void)setImage:(UIImage *)image
{
    if (!image)
        return;
    
    // This one uses UIImage category UIImage+Resize.
    UIImage *thumbnailedImage = [image thumbnailImage:120 transparentBorder:0 cornerRadius:0 interpolationQuality:kCGInterpolationMedium];
    // thumbnailImage:... can return nil on some gif files. If so, put old unmodified image instead.
    self.imageView.image = thumbnailedImage ? thumbnailedImage : image;
    [self animateActivity:NO];
    self.loaded = YES;
}

- (void)animateActivity:(BOOL)animate
{
    self.activityIndicator.hidden = !animate;
    if (animate)
        [self.activityIndicator startAnimating];
    else
        [self.activityIndicator stopAnimating];
}

+ (AVCellThumbnailView *)thumbnail
{
    return [[AVCellThumbnailView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
        [self addSubview:self.imageView];
        self.activityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetHeight(frame))];
        self.activityIndicator.backgroundColor = [UIColor colorWithWhite:0 alpha:0.1];
        [self addSubview:self.activityIndicator];
    }
    
    return self;
}

- (void)willMoveToSuperview:(UIView *)newSuperview
{
    [super willMoveToSuperview:newSuperview];
    if (!self.loaded)
        [self animateActivity:YES];
}


@end
