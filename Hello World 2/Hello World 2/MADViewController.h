//
//  MADViewController.h
//  Hello World 2
//
//  Created by Matthew Kane Semcken on 9/3/13.
//  Copyright (c) 2013 Matthew Kane Semcken. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *messageText;

- (IBAction)buttonPressed:(UIButton *)sender;


@end
