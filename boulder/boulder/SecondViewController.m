//
//  SecondViewController.m
//  boulder
//
//  Created by Matthew Semcken on 10/17/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submitQuestion:(UIButton *)sender {
    
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
    
    
    NSString *recipients = @"mailto:matthew.semcken@colorado.edu?subject=Question from Boulder app";
    NSString *body = [NSString stringWithFormat:@"&body=%@ from %@ %@", _questionTextview.text, _nameTextfield.text, _emailTextfield.text];
    
    NSString *email = [NSString stringWithFormat:@"%@ %@", recipients, body];
    NSLog(email);
    
    email= [email stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:email]];
    
    
    
}
@end
