//
//  ViewController.m
//  favorites
//
//  Created by Matthew Semcken on 12/9/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _user= [[Favorite alloc]init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)returned:(UIStoryboardSegue *)segue {
    _bookLabel.text= _user.favBook;
    _authorLabel.text= _user.favAuthor;
}

-(void)viewWillAppear:(BOOL)animated{
    _bookLabel.text=_user.favBook;
    _authorLabel.text=_user.favAuthor;
}



@end
