//
//  CollectionViewCell.h
//  THPhotoBombers
//
//  Created by Michael Vilabrera on 12/18/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell

@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) NSDictionary *photo;

@end
