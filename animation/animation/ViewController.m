//
//  ViewController.m
//  animation
//
//  Created by Matthew Semcken on 11/14/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
CGPoint delta;
NSTimer *timer;
float ballRadius;
    CGPoint translation;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    ballRadius=_imageView.frame.size.width/2;
    delta=CGPointMake(12.0, 4.0);
    [self changeSliderValue];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderMoved:(id)sender {
    [timer invalidate];
    [self changeSliderValue];
}

-(IBAction)changeSliderValue
{
    _sliderLabel.text=[NSString stringWithFormat:@"%.2f", _slider.value];
    timer=[NSTimer scheduledTimerWithTimeInterval:_slider.value target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
}

-(void)onTimer {
    [UIView beginAnimations:@"my_own_animation" context:nil];
    [UIView animateWithDuration: _slider.value
                          delay:0
                        options: UIViewAnimationOptionCurveEaseOut
                     animations:^{_imageView.transform = CGAffineTransformMakeTranslation (translation.x, translation.y);
                         translation.x += delta.x;
                         translation.y += delta.y;}
                     completion: NULL];
    [UIView commitAnimations];
    
    _imageView.center = CGPointMake(_imageView.center.x+delta.x, _imageView.center.y+delta.y);
    if  (_imageView.center.x > self.view.bounds.size.width - ballRadius || _imageView.center.x < ballRadius)
    delta.x = -delta.x;
    if  (_imageView.center.y > self.view.bounds.size.width - ballRadius || _imageView.center.y < ballRadius)
    delta.y = -delta.y;
}
@end
