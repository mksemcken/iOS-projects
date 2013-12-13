//
//  MADAnnotation.h
//  location
//
//  Created by Matthew Semcken on 12/12/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MADAnnotation : NSObject <MKAnnotation>

@property (nonatomic, readonly)CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;

-(id) initWithCoordinate: (CLLocationCoordinate2D) coor;
-(void)moveAnnotation:(CLLocationCoordinate2D) newCoordinate;


@end
