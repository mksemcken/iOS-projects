//
//  ViewController.m
//  musicdependent
//
//  Created by Matthew Semcken on 10/8/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSBundle *bundle=[NSBundle mainBundle];
    //returns bundle object of our app
    NSString *plistPath=[bundle pathForResource:@"artistalbums" ofType:@"plist"];
    //retrieve the path of artistalbums.plist
    _artistAlbums=[[NSDictionary alloc] initWithContentsOfFile:plistPath];
    //loads the contents of the plist file into the artistAlbums dictionary
    //the dictionary uses the artists as the keys and a NSarray with the albums for each artist.
    _artists=[_artistAlbums allKeys];
    //retrieve all the keys with the artists names and populate the left component
    NSString *selectedArtists=[_artists objectAtIndex:0];
    //get the artist at index 0
    _albums=[_artistAlbums objectForKey:selectedArtists];
    //get albums for the selected artist and populate the right component
	// Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

//required for the UIPickerBiewDataSource protocol
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component==artistComponent)
        return [_artists count];
    else return [_albums count];
}

//picker delegate methods
//returns the title for a given row
-(NSString *)pickerView:(UIPickerView *)pickerView
            titleForRow:(NSInteger) row
           forComponent:(NSInteger) component{
    if (component==artistComponent) 
        return [_artists objectAtIndex:row];
    else return [_albums objectAtIndex:row];
    
    }
-(void)pickerView:(UIPickerView *)pickerView
     didSelectRow:(NSInteger)row
      inComponent:(NSInteger)component{
    if(component==artistComponent){
        NSString *selectedArtists=[_artists objectAtIndex:row];
        _albums=[_artistAlbums objectForKey:selectedArtists];
        [_musicPicker selectRow:0 inComponent:albumComponent animated:YES];
        [_musicPicker reloadComponent:albumComponent];
 
 
    }
    NSInteger artistrow=[_musicPicker selectedRowInComponent:albumComponent];
    NSInteger albumrow=[_musicPicker selectedRowInComponent:albumComponent];

_choiceLabel.text=[NSString stringWithFormat:@"You Like %@ by %@", [_albums objectAtIndex:albumrow], [_artists objectAtIndex:artistrow]];

}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
