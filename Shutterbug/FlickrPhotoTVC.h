//
//  FlickerPhotoTVC.h
//  Shutterbug
//
//  Created by Eric Tapia on 2/23/13.
//  Copyright (c) 2013 Eric Tapia. All rights reserved.
//
// Will call setImageURL: as part of any "Show Image" segue.

#import <UIKit/UIKit.h>

@interface FlickrPhotoTVC : UITableViewController

    @property (nonatomic, strong) NSArray *photos;  // of NSDictionary

@end
