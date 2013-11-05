//
//  DetailViewController.h
//  countries
//
//  Created by Matthew Semcken on 11/4/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>


@property(strong,nonatomic)NSMutableArray *countryList;

@end
