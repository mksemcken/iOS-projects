//
//  MADViewController.h
//  Hello World!
//
//  Created by Matthew Kane Semcken on 8/29/13.
//  Copyright (c) 2013 Matthew Kane Semcken. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController

- (IBAction)buttonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *messageText;



@end
