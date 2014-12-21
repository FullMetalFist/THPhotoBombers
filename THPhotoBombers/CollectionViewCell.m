//
//  CollectionViewCell.m
//  THPhotoBombers
//
//  Created by Michael Vilabrera on 12/18/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageView = [[UIImageView alloc] init];
        self.imageView.image = [UIImage imageNamed:@"Treehouse"];
        [self.contentView addSubview:self.imageView];
    }
    return self;
}

- (void) layoutSubviews {
    [super layoutSubviews];
    
    self.imageView.frame = self.contentView.bounds;
}

@end
