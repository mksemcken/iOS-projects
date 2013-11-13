//
//  CountryViewController.m
//  countries
//
//  Created by Matthew Semcken on 11/12/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import "CountryViewController.h"

@interface CountryViewController ()

@end

@implementation CountryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue
                sender:(id)sender{
    if ([segue.identifier isEqualToString:@"doneSegue"]) {
        if (_countryTextfield.text.length>0) {
            _addedCountry=_countryTextfield.text;
        } 
    } 
} 


@end
