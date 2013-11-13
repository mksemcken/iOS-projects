//
//  ViewController2.h
//  RestApp
//
//  Created by Matthew Semcken on 11/7/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController2 : UITableViewController<UITableViewDataSource, UITableViewDelegate>

@property(strong,nonatomic)NSMutableArray *foodList;
@end