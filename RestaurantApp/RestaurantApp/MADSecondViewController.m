//
//  MADSecondViewController.m
//  RestaurantApp
//  Copyright (c) 2013 Matt Semcken. All rights reserved.
//

#import "MADSecondViewController.h"

@interface MADSecondViewController ()

@end
@implementation MADSecondViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    _checkAmount.delegate=self;
    _tipPercent.delegate=self;
    _people.delegate=self;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

-(void)updateTipTotals
{
    float amount=[_checkAmount.text floatValue];
    float pct=[_tipPercent.text floatValue];
    int numberOfPeople=[_people.text intValue];
    
    pct=pct/100;
    
    
    //compute the totals
    float tip=amount*pct;
    float total=amount+tip;
    float personTotal=0;
    
 
    if (numberOfPeople>0)
    {personTotal=total/numberOfPeople;
    }
    
    else { 
        UIAlertView *alertView=[[UIAlertView alloc]
                                initWithTitle:@"Warning"
                                message: @"Can't Eat Without Yourself! Enter 1 into Number of People."
                                delegate:self
                                cancelButtonTitle:@"Cancel"
                                otherButtonTitles:@"OK",nil];
        [alertView show];
    }
    
    
    NSNumberFormatter *currencyFormatter=[[NSNumberFormatter alloc]init];
    [currencyFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
   
    
    _tipDue.text=[currencyFormatter stringFromNumber:[NSNumber numberWithFloat:tip]];
    _totalDue.text=[currencyFormatter stringFromNumber:[NSNumber numberWithFloat:total] ];
    _personDue.text=[currencyFormatter stringFromNumber:[NSNumber numberWithFloat:personTotal]];
    
}

-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex==1)  
    {_people.text=[NSString stringWithFormat:@"1"];
        [self updateTipTotals];
    }}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    [self updateTipTotals];
    
}

@end