//
//  MADViewController.h
//  Beach Boys
//
//  Created by Matthew Kane Semcken on 9/17/13.
//  Copyright (c) 2013 Matthew Kane Semcken. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MADViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *BBimage;
@property (weak, nonatomic) IBOutlet UILabel *BBlabel;

@property (weak, nonatomic) IBOutlet UISegmentedControl *BBimageControl;
@property (weak, nonatomic) IBOutlet UISwitch *BBCapSwitch;
@property (weak, nonatomic) IBOutlet UILabel *fontsizelabel;


- (IBAction)BBFontUpdate:(UISwitch *)sender;
- (IBAction)BBfontSize:(UISlider *)sender;
- (IBAction)BBswitch:(UISegmentedControl *)sender;

@end
