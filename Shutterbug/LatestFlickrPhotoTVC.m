//
//  LatestFlickrPhotoTVC.m
//  Shutterbug
//
//  Created by Eric Tapia on 2/23/13.
//  Copyright (c) 2013 Eric Tapia. All rights reserved.
//

#import "LatestFlickrPhotoTVC.h"
#import "FlickrFetcher.h"

@interface LatestFlickrPhotoTVC ()

@end

@implementation LatestFlickrPhotoTVC

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.photos = [FlickrFetcher latestGeoreferencedPhotos];
}


@end
