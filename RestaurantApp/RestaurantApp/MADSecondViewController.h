//
//  MADSecondViewController.h
//  RestaurantApp
//  Copyright (c) 2013 Matt Semcken. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADSecondViewController : UIViewController <UITextFieldDelegate, UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *checkAmount;
@property (weak, nonatomic) IBOutlet UITextField *tipPercent;
@property (weak, nonatomic) IBOutlet UITextField *people;
@property (weak, nonatomic) IBOutlet UILabel *tipDue;
@property (weak, nonatomic) IBOutlet UILabel *totalDue;
@property (weak, nonatomic) IBOutlet UILabel *personDue;

@end
