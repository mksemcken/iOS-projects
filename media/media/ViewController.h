//
//  ViewController.h
//  media
//
//  Created by Matthew Semcken on 12/11/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController<UIImagePickerControllerDelegate, UIActionSheetDelegate,
UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)cameraButtonTapped:(id)sender;
- (IBAction)actionButtonTapped:(id)sender;



@end
