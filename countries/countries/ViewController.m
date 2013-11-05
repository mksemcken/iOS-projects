//
//  ViewController.m
//  countries
//
//  Created by Matthew Semcken on 11/4/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()
{

NSMutableDictionary *continentData;
}

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
        [super viewDidLoad];
    
        NSBundle *bundle=[NSBundle mainBundle]; 
        NSString *plistPath=[bundle pathForResource:@"continents" ofType:@"plist"];
        NSMutableDictionary *dictionary=[[NSMutableDictionary alloc] initWithContentsOfFile:plistPath]; 
    
    continentData=dictionary;
    
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{
    return [continentData count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:CellIdentifier];
    }
    NSArray *rowData=[continentData allKeys]; 
    cell.textLabel.text=[rowData objectAtIndex:indexPath.row];
   
    
    return cell; 
} 

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"countrysegue"]) {
        DetailViewController *countryViewController=segue.destinationViewController;
        NSIndexPath *indexPath=[self.tableView indexPathForSelectedRow];
        NSArray *rowData=[continentData allKeys]; //creates an array with all keys from our dictionary
        countryViewController.title=[rowData objectAtIndex:indexPath.row];
        countryViewController.countryList=[continentData objectForKey:countryViewController.title];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
