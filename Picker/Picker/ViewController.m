//
//  ViewController.m
//  Picker
//
//  Created by Matthew Semcken on 10/3/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSArray *array=[[NSArray alloc] initWithObjects:@"Country", @"Pop", @"Rock", @"Alternative", @"Hip Hop", @"Jazz", @"Classical", nil];
    _genre=array;
}

//Methods Required to Implement Picker
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{return 1; }//number of components
    
//Required for DATASOURCE PROTOCAL
    -(NSInteger)pickerView: (UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {return [_genre count];}
//Picker Delegate Methods
    -(NSString *)pickerView:(UIPickerView *)pickerView
                 titleForRow:(NSInteger) row
                forComponent:(NSInteger) component {
                    return [_genre objectAtIndex:row];}
    
//row is selected
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{_choiceLabel.text = [NSString stringWithFormat:@"You Like %@", [_genre objectAtIndex:row]];}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
