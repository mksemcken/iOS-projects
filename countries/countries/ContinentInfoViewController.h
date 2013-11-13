//
//  ContinentInfoViewController.h
//  countries
//
//  Created by Matthew Semcken on 11/12/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContinentInfoViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UITableViewCell *continentName;
@property (weak, nonatomic) IBOutlet UITableViewCell *countryNumber;
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *number;




@end
