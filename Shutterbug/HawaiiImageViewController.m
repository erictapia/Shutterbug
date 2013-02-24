//
//  MyHawaiiImageViewController.m
//  Shutterbug
//
//  Created by Eric Tapia on 2/23/13.
//  Copyright (c) 2013 Eric Tapia. All rights reserved.
//

#import "HawaiiImageViewController.h"

@interface HawaiiImageViewController ()

@end

@implementation HawaiiImageViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.imageUrl = [[NSURL alloc] initWithString:@"http://images.apple.com/v/iphone/gallery/a/images/photo_3.jpg"];
}


@end
