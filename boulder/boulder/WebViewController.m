//
//  WebViewController.m
//  boulder
//
//  Created by Matthew Semcken on 10/17/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController
-(void) loadWebPagewithString:(NSString *)urlString{

    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_boulderWebView loadRequest:request];

}
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

    [self loadWebPagewithString:@"http://www.colorado.edu/"];

}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    [_boulderSpinner startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [_boulderSpinner stopAnimating];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
