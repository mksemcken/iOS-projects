//
//  FirstViewController.h
//  Semcken_Project3
//
//  Created by Matthew Semcken on 12/11/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface FirstViewController : UIViewController <MFMessageComposeViewControllerDelegate>
- (IBAction)showEmail:(id)sender;
- (IBAction)text:(id)sender;


@end
