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
    NSArray *array2=[[NSArray alloc] initWithObjects:@"1950s", @"1960s", @"1970s", @"1980s", @"1990s", @"2000s", @"2010s", nil];
    
    _genre=array;
    _decade=array2;
}

//Methods Required to Implement Picker
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{return 2; }//number of components
    
//Required for DATASOURCE PROTOCAL
-(NSInteger)pickerView: (UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
        {if(component==0)
                return [_genre count];
                else return [_decade count];
        }
//Picker Delegate Methods
    -(NSString *)pickerView:(UIPickerView *)pickerView
                 titleForRow:(NSInteger) row
                forComponent:(NSInteger) component {
        
        if (component==0)
                    return [_genre objectAtIndex:row];
        else return [_decade objectAtIndex:row];
    }
    
//row is selected
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSInteger genrerow=[_musicPicker selectedRowInComponent:0];
    NSInteger decaderow=[_musicPicker selectedRowInComponent:1];
    
    _choiceLabel.text = [NSString stringWithFormat:@"You Like %@ from the %@", [_genre objectAtIndex:genrerow], [_decade objectAtIndex:decaderow]];}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
