//
//  ImageViewController.m
//  Shutterbug
//
//  Created by Eric Tapia on 2/23/13.
//  Copyright (c) 2013 Eric Tapia. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController () <UIScrollViewAccessibilityDelegate>
    @property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
    @property (strong, nonatomic) UIImageView *imageView;

@end

@implementation ImageViewController

- (void)setImageUrl:(NSURL *)imageUrl {
    _imageUrl = imageUrl;
    [self resetImage];
}

- (void)resetImage {
    if (self.scrollView) {
        self.scrollView.contentSize = CGSizeZero;
        self.imageView.image = nil;
        
        NSData *imageData = [[NSData alloc] initWithContentsOfURL:self.imageUrl];
        UIImage *image = [[UIImage alloc] initWithData:imageData];
        
        if (image) {
            self.scrollView.zoomScale = 1.0;
            self.scrollView.contentSize = image.size;
            self.imageView.image = image;
            self.imageView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
        }
    }
}

- (UIImageView *)imageView {
    if (!_imageView) {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    }
    return _imageView;
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.imageView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self.scrollView addSubview:self.imageView];
    self.scrollView.minimumZoomScale = 0.2;
    self.scrollView.maximumZoomScale = 5.0;
    self.scrollView.delegate = self;
    [self resetImage];
}


@end
