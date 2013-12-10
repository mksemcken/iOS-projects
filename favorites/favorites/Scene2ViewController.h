//
//  Scene2ViewController.h
//  favorites
//
//  Created by Matthew Semcken on 12/9/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Favorite.h"

@interface Scene2ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *userAuthor;
@property (weak, nonatomic) IBOutlet UITextField *userBook;
@property (strong, nonatomic) Favorite *userInfo;



@end
