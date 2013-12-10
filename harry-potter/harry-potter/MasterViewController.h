//
//  MasterViewController.h
//  harry-potter
//
//  Created by Matthew Semcken on 12/9/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController
@property   (strong, nonatomic) DetailViewController *detailViewController;
@property (copy, nonatomic) NSArray *characters;

@end