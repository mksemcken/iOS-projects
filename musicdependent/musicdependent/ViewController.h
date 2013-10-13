//
//  ViewController.h
//  musicdependent
//
//  Created by Matthew Semcken on 10/8/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import <UIKit/UIKit.h>
#define artistComponent 0
#define albumComponent 1


@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *musicPicker;
@property (weak, nonatomic) IBOutlet UILabel *choiceLabel;


@property (strong, nonatomic) NSDictionary *artistAlbums;
@property (strong, nonatomic) NSArray *artists;
@property (strong, nonatomic) NSArray *albums;


@end
