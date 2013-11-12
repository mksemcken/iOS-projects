//
//  MADDetailViewController.h
//  RestaurantApp
//
//  Created by Matthew Semcken on 11/7/13.
//  Copyright (c) 2013 Matt Semcken. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADDetailViewController : UITableViewController<UITableViewDataSource, UITableViewDelegate>

@property(strong,nonatomic)NSMutableArray *foodList;
@end
