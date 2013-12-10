//
//  ViewController.h
//  favorites
//
//  Created by Matthew Semcken on 12/9/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Favorite.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *bookLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (strong, nonatomic) Favorite *user;

@end
