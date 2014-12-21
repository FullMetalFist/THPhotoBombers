//
//  CollectionViewController.m
//  THPhotoBombers
//
//  Created by Michael Vilabrera on 12/17/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

#import "CollectionViewController.h"
#import "CollectionViewCell.h"

@interface CollectionViewController ()

@end

@implementation CollectionViewController

- (instancetype) init {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    layout.itemSize = CGSizeMake(106.0, 106.0);
    layout.minimumInteritemSpacing = 1.0;
    layout.minimumLineSpacing = 1.0;
    
    return (self = [super initWithCollectionViewLayout:layout]);
}

- (void) viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Photo Bombers";
    
    // register a custom class
    [self.collectionView registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:@"photo"];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURL *url = [[NSURL alloc] initWithString:@"http://blog.teamtreehouse.com/api/get_recent_summary/"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    NSURLSessionDownloadTask *task = [session downloadTaskWithRequest:request completionHandler:^(NSURL *location, NSURLResponse *response, NSError *error) {
        NSString *text = [[NSString alloc] initWithContentsOfURL:location encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"Text: %@", text);
    }];
    [task resume];
}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"photo" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor lightGrayColor];
    return cell;
}

@end
