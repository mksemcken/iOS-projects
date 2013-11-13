//
//  CountryViewController.h
//  countries
//
//  Created by Matthew Semcken on 11/12/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface CountryViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *countryTextfield;
@property (copy, nonatomic) NSString *addedCountry;

@end
