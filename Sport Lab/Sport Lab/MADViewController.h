//
//  MADViewController.h
//  Sport Lab
//
//  Created by Matthew Kane Semcken on 9/17/13.
//  Copyright (c) 2013 Matthew Kane Semcken. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *sportImage;

@property (weak, nonatomic) IBOutlet UITextField *nameField;

@property (weak, nonatomic) IBOutlet UILabel *messageLabel;

- (IBAction)buttonPressed:(UIButton *)sender;

- (IBAction)textFieldDoneEditing:(UITextField *)sender;


@end
