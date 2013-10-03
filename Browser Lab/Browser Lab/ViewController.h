//
//  ViewController.h
//  Browser Lab
//
//  Created by Matthew Semcken on 10/2/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate, UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIToolbar *toolbar;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;

- (IBAction)bookmarkItemTapped:(id)sender;
@end
