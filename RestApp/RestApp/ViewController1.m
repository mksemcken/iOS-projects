//
//  MADFirstViewController.m
//  RestaurantApp
//  Copyright (c) 2013 Matt Semcken. All rights reserved.
//

#import "ViewController1.h"
#import "ViewController2.h"


@interface ViewController1 ()

@end

@implementation ViewController1 {
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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"foodSegue"]) {
        ViewController2
        *foodViewController=segue.destinationViewController;
        
        NSIndexPath *indexPath=[self.tableView indexPathForSelectedRow];
        NSArray *rowData=[foodlistData allKeys];
        foodViewController.title=[rowData objectAtIndex:indexPath.row];
        foodViewController.foodList=[foodlistData  objectForKey:foodViewController.title];
    }
}


@end
