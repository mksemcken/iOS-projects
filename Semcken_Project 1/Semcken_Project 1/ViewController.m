//
//  ViewController.m
//  Semcken_Project 1
//
//  Created by Matthew Semcken on 10/1/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _numberFirst.delegate=self;
    _numberSecond.delegate=self;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}
-(BOOL)textFieldShouldReturn:(UITextField *)textField

{
    [textField resignFirstResponder];
    return YES;

}


- (IBAction)buttonPressed:(UIButton*)sender {
    if(sender.tag==1)
    {
        CGFloat amountOne = (CGFloat)[_numberFirst.text floatValue];
        CGFloat amountTwo = (CGFloat)[_numberSecond.text floatValue];
        CGFloat answerValue = amountOne * amountTwo;
        
        NSString *answer= [NSString stringWithFormat:@"%f", answerValue];
        _answerOutlet.text=answer;
    }
    if(sender.tag==2)
    {
        CGFloat amountOne = (CGFloat)[_numberFirst.text floatValue];
        CGFloat amountTwo = (CGFloat)[_numberSecond.text floatValue];
        CGFloat answerValue = amountOne / amountTwo;
        
        NSString *answer= [NSString stringWithFormat:@"%f", answerValue];
        _answerOutlet.text=answer;
       
    }
    if(sender.tag==3)
    {
        CGFloat amountOne = (CGFloat)[_numberFirst.text floatValue];
        CGFloat amountTwo = (CGFloat)[_numberSecond.text floatValue];
        CGFloat answerValue = amountOne - amountTwo;
        
        NSString *answer= [NSString stringWithFormat:@"%f", answerValue];
        _answerOutlet.text=answer;
      
    }
    if(sender.tag==4)
    {
        CGFloat amountOne = (CGFloat)[_numberFirst.text floatValue];
        CGFloat amountTwo = (CGFloat)[_numberSecond.text floatValue];
        CGFloat answerValue = amountOne + amountTwo;
        
        NSString *answer= [NSString stringWithFormat:@"%f", answerValue];
        _answerOutlet.text=answer;
       
    }
    
}



@end
