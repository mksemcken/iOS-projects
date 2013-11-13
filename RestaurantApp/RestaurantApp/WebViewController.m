//
//  WebViewController.m
//  boulder
//
//  Created by Matthew Semcken on 11/07/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController
-(void) loadWebPagewithString:(NSString *)urlString{

    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_recipeWebView loadRequest:request];

}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	
    
    
    // Do any additional setup after loading the view.

    [self loadWebPagewithString:@"http://www.recipe.com/"];

}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    [_Spinner startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [_Spinner stopAnimating];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
