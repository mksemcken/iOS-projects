//
//  ViewController.h
//  Semcken_Project 1
//
//  Created by Matthew Semcken on 10/1/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController< UITextFieldDelegate>
    
@property (weak, nonatomic) IBOutlet UITextField *numberFirst;
@property (weak, nonatomic) IBOutlet UITextField *numberSecond;

@property (weak, nonatomic) IBOutlet UILabel *answerOutlet;


- (IBAction)buttonPressed:(UIButton*)sender;





@end
