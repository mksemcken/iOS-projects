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

- (void)updateImage {
    
    if (_BBimageControl.selectedSegmentIndex==0) {_BBlabel.text=@"1960s";
        _BBimage.image=[UIImage imageNamed:@"beachboys2.png"];}
    
    else if (_BBimageControl.selectedSegmentIndex==1)
    {
        _BBlabel.text=@"1970s";
        _BBimage.image=[UIImage imageNamed:@"beachboys3.png"];
    }
    
    
}
- (void)updateCaps{
if (_BBCapSwitch.on ){
    _BBlabel.text=[_BBlabel.text uppercaseString];}
        
    else  {
        _BBlabel.text=[_BBlabel.text lowercaseString];}
}

-(IBAction)BBswitch:(UISegmentedControl *)sender{
    [self updateImage];
    [self updateCaps];
}
-(IBAction)BBFontUpdate:(UISwitch *)sender{
    [self updateCaps];
}

- (IBAction)BBfontSize:(UISlider *)sender {

    int BBfontSize = sender.value;
    _fontsizelabel.text=[NSString stringWithFormat:@"%d", BBfontSize];
    
    UIFont *newFont = [UIFont systemFontOfSize:sender.value];
    
    _BBlabel.font=newFont;
    
}
    
    
    
@end
