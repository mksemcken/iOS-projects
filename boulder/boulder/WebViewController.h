//
//  WebViewController.h
//  boulder
//
//  Created by Matthew Semcken on 10/17/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *boulderWebView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *boulderSpinner;

@end
