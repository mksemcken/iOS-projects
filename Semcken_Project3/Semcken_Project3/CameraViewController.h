//
//  CameraViewController.h
//  Semcken_Project3
//
//  Created by Matthew Semcken on 12/11/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import <MediaPlayer/MediaPlayer.h>

@interface CameraViewController : UIViewController<UIImagePickerControllerDelegate, UIActionSheetDelegate,
UINavigationControllerDelegate>



@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)takePhoto:(id)sender;
- (IBAction)selectPhoto:(id)sender;

@end
