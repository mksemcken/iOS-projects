//
//  MADViewController.m
//  Sport Lab
//
//  Created by Matthew Kane Semcken on 9/17/13.
//  Copyright (c) 2013 Matthew Kane Semcken. All rights reserved.
//

#import "MADViewController.h"

@interface MADViewController ()

@end

@implementation MADViewController

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

- (IBAction)buttonPressed:(UIButton *)sender {
    
    if(sender.tag==1)
    {
        _sportImage.image=[UIImage imageNamed:@"baseball1.jpg"];
    NSString *message= [[NSString alloc] initWithFormat:@"%@ I Like This Team Too", _nameField.text];
    _messageLabel.text=message;
    
    }
    if(sender.tag==2)
    {
        _sportImage.image=[UIImage imageNamed:@"baseball2.jpg"];
        NSString *message= [[NSString alloc] initWithFormat:@"%@ I Like This Team More", _nameField.text];
        _messageLabel.text=message;
    }
    
}

- (IBAction)textFieldDoneEditing:(UITextField *)sender {

    [sender resignFirstResponder];


}
@end
