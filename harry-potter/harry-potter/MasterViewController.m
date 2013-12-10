//
//  MasterViewController.m
//  Harry Potter
//
//  Created by Matthew Semcken on 12/9/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"

@implementation MasterViewController



- (void)awakeFromNib
{
    [super awakeFromNib];
    self.clearsSelectionOnViewWillAppear=NO;
    self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSBundle *bundle=[NSBundle mainBundle];
    
    NSString *plistPath=[bundle pathForResource:@"harrypotter" ofType:@"plist"];
    NSDictionary *characterInfo=[NSDictionary  dictionaryWithContentsOfFile:plistPath];
    self.characters=[characterInfo objectForKey:@"characters"];
    
    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject]topViewController];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_characters count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSDictionary *characterChoosen=[_characters objectAtIndex:indexPath.row];
    cell.textLabel.text = [characterChoosen objectForKey:@"name"];
    return cell;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *characterChoosen = [self.characters objectAtIndex:indexPath.row];
    NSString *url=[characterChoosen objectForKey:@"url"];
    NSString *name=[characterChoosen objectForKey:@"name"];
    
    self.detailViewController.detailItem=url;
    self.detailViewController.title=name;
}

@end
