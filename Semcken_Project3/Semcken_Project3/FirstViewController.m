//
//  FirstViewController.m
//  Semcken_Project3
//
//  Created by Matthew Semcken on 12/11/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

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



- (IBAction)showEmail:(id)sender {
        NSString *emailTitle = @"";
        NSString *messageBody = @"";
        NSArray *toRecipents = [NSArray arrayWithObject:@""];
        
        MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
         mc.mailComposeDelegate =self;
        [mc setSubject:emailTitle];
        [mc setMessageBody:messageBody isHTML:NO];
        [mc setToRecipients:toRecipents];
    
        [self presentViewController:mc animated:YES completion:NULL];
        
    }

- (IBAction)text:(id)sender {
    
    MFMessageComposeViewController *textComposer=[[MFMessageComposeViewController alloc] init];
    [textComposer setMessageComposeDelegate:self];
    
    if ([MFMessageComposeViewController canSendText]) {
        [textComposer setRecipients:[NSArray arrayWithObjects:nil]];
        [textComposer setBody:@""];
        [self presentViewController:textComposer animated:YES completion:NULL];
    }
    
    else {
        NSLog(@"Can't Open Text");
        
    }
    
    
    
    
}

-(void) messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result{
    [self dismissViewControllerAnimated:YES
                             completion:NULL];
}
    
    - (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
    {
        switch (result)
        {
            case MFMailComposeResultCancelled:
                NSLog(@"Mail cancelled");
                break;
            case MFMailComposeResultSaved:
                NSLog(@"Mail saved");
                break;
            case MFMailComposeResultSent:
                NSLog(@"Mail sent");
                break;
            case MFMailComposeResultFailed:
                NSLog(@"Mail sent failure: %@", [error localizedDescription]);
                break;
            default:
                break;
        }
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
    

@end
