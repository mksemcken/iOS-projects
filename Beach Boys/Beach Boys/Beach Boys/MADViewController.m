//
//  MADViewController.m
//  Beach Boys
//
//  Created by Matthew Kane Semcken on 9/17/13.
//  Copyright (c) 2013 Matthew Kane Semcken. All rights reserved.
//

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

- (void)viewDidLoad
{
    
    _BBimageControl.selectedSegmentIndex= -1;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)BBswitch:(UISegmentedControl *)sender {
    
    if (_BBimageControl.selectedSegmentIndex==0) {_BBlabel.text=@"1960s";
        _BBimage.image=[UIImage imageNamed:@"beachboys2.png"];}
    
    else if (_BBimageControl.selectedSegmentIndex==1)
    {
        _BBlabel.text=@"1970s";
        _BBimage.image=[UIImage imageNamed:@"beachboys3.png"];
    }
    
    
}
- (IBAction)BBFontUpdate:(UISwitch *)sender {
    if (_BBCapSwitch.on )
        
        else {
             
            
        
        }
        
    }

- (IBAction)BBfontSize:(UISlider *)sender {

    int BBfontsize
    
    _fontsizelabel.text=[NSString stringwithformat:@"%d", fontsize]
    
}
    
    
    
@end
