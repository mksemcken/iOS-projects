//
//  ThirdViewController.h
//  Semcken_Project3
//
//  Created by Matthew Semcken on 12/12/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ThirdViewController : UIViewController<MFMailComposeViewControllerDelegate>
- (IBAction)sendMail:(id)sender;


@end
