//
//  MADFirstViewController.m
//  RestaurantApp
//  Copyright (c) 2013 Matt Semcken. All rights reserved.
//

#import "MADFirstViewController.h"
#import "MADDetailViewController.h"


@interface MADFirstViewController ()

@end

@implementation MADFirstViewController {
    NSMutableDictionary *foodlistData;
}

- (void)viewDidLoad
{
    NSBundle *bundle=[NSBundle mainBundle];
    NSString *plistPath=[bundle pathForResource:@"foodlist"
                                         ofType:@"plist"];
    NSMutableDictionary *dictionary=[[NSMutableDictionary alloc]
                                     initWithContentsOfFile:plistPath];
        foodlistData=dictionary;
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)tableView:(UITableView *)tableView
numberOfRowsInSection:(NSInteger)section{
    return [foodlistData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"foodCell";
    
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:CellIdentifier];
    }
    NSArray *rowData=[foodlistData allKeys];
    cell.textLabel.text=[rowData objectAtIndex:indexPath.row];
    //sets the text of the cell with the row being requested 
    
    return cell; 
}


@end
