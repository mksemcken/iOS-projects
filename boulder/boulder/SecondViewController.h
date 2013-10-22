//
//  SecondViewController.h
//  boulder
//
//  Created by Matthew Semcken on 10/17/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTextfield;

@property (weak, nonatomic) IBOutlet UITextField *emailTextfield;
@property (weak, nonatomic) IBOutlet UITextView *questionTextview;

- (IBAction)submitQuestion:(UIButton *)sender;
@end
