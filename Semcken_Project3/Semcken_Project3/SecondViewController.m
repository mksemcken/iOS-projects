//
//  SecondViewController.m
//  Semcken_Project3
//
//  Created by Matthew Semcken on 12/11/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize mapView;


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.mapView.delegate= self;
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
    
    // Add an annotation
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = userLocation.coordinate;
    point.title = @"Current Location";
    point.subtitle = @"";
    
    [self.mapView addAnnotation:point];
}




@end
