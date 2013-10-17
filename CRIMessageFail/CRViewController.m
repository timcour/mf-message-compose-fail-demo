//
//  CRViewController.m
//  CRIMessageFail
//
//  Created by Timothy Courrejou on 10/17/13.
//  Copyright (c) 2013 Camino Real Inc. All rights reserved.
//

#import "CRViewController.h"

@interface CRViewController ()

@end

static NSArray *_imageURLs;

@implementation CRViewController {
    int _currentIndex;
}

+ (void)initialize {
    _imageURLs = [NSArray arrayWithObjects:
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/a12c44f16f837836119a374062b23e501b6705d5",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/807913e195d7a92f631a0b53f2af901e4d185261",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/a8bcfe151ebbbecf39fa6b175cb3ff5a6725a083",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/0cf4ac494e7cd5f2da8f2825353ec6709050b68d",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/5be8edf1675c8180eb2936284f5cff801d030e3a",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/adaeb473e8e3551c5a55f4ac147b82fe3a2c2e11",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/b75504052c48c7e8374980cd6eadb4a45bd79911",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/e0dbca18d2cc74eae594b9a1fada65e310ea4ff8",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/410050b4b930196f05fdbb4c2c51166065b4e9df",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/187e0012040bf6fbcfd25fecba850b8b70899b4d",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/67dd21d4dbdcc09942406a24a2dd677b715acd67",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/3380a519a10465aa1e64dd78c5608763b57d1750",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/ce50382621389f34752eb7af962ec4ddab54684e",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/1961d3464d20de8441262862d6e239e7b52c8619",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/cbe0cad8cb4b65b646200bd5be2af49d76e27c75",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/d1eb026fc102670aa3e867058bb792370c9b874c",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/fbe58df1d625ba7782418eb591f861991fbd78fb",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/6d26f8d458763b418c39c33d39211831df7a2158",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/c30e1c20031cfcbba5621b209561ef0cbe3ba95f",
                  @"http://cam-image-corpus-west.s3.amazonaws.com/corp/original/fccd467ea997503a151cb93c34d1dda0e6160940",
                  nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadImageAtIndex:0];
}

- (void)loadImageAtIndex:(int)index {
    NSURL *url = [NSURL URLWithString:_imageURLs[index]];
    NSData *data = [NSData dataWithContentsOfURL:url];
    self.imageView.image = [UIImage imageWithData:data];
    _currentIndex = index;
}

- (void)nextPressed:(id)sender {
    [self loadImageAtIndex:(_currentIndex + 1) % _imageURLs.count];
}

- (void)sendPressed:(id)sender {
    NSLog(@"sendPressed: not yet implemented");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
