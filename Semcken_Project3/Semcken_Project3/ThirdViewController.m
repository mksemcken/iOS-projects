//
//  ThirdViewController.m
//  Semcken_Project3
//
//  Created by Matthew Semcken on 12/12/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendMail:(id)sender {
    
    MFMailComposeViewController *mailcontroller = [[MFMailComposeViewController alloc]init];
    [mailcontroller setMailComposeDelegate:self]; NSString *address = @"address@example.com"; NSArray *addressArray = [[NSArray alloc]initWithObjects:address, nil];
    
    
    UIImage *myImage = [UIImage imageNamed:@"filename.png"];
    NSData *imageData = UIImagePNGRepresentation(myImage);
    [mailcontroller addAttachmentData:imageData mimeType:@"image/png" fileName:@"Name"];
    [mailcontroller setMessageBody:@"Message" isHTML:NO];
    [mailcontroller setToRecipients:addressArray];
    [mailcontroller setSubject:@"Subject"];
    [mailcontroller setModalTransitionStyle: UIModalTransitionStyleCoverVertical];
    [self presentViewController:mailcontroller animated:YES completion:nil];
    
}

-(void)mailComposeController: (MFMailComp­oseViewController *)controller didFinishWithResult:(MFMailComposeResult­ )error:(NSError *)error { [self dismissViewControllerAnimated:YES completion:nil];
}

@end
