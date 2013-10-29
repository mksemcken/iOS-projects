//
//  ViewController.m
//  scrabble
//
//  Created by Matthew Semcken on 10/22/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()








@end

@implementation ViewController
{
    NSArray *words;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSBundle *bundle=[NSBundle mainBundle];
    NSString *plistPath=[bundle pathForResource:@"qwordswithoutu1" ofType:@"plist"];
    words=[[NSArray alloc] initWithContentsOfFile:plistPath];
    self.title=@"words";
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return[words count];

}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"CellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell ==nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text=[words objectAtIndex:indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *rowValue=[words objectAtIndex:indexPath.row];
    NSString *message=[[NSString alloc] initWithFormat:@"You Selected %@",rowValue];
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Row Selected" message:message delegate:nil cancelButtonTitle:@"Yes, I did" otherButtonTitles:nil];
    [alert show];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
