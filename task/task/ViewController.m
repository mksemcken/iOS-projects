//
//  ViewController.m
//  task
//
//  Created by Matthew Semcken on 12/3/13.
//  Copyright (c) 2013 MKS. All rights reserved.
//

#import "ViewController.h"
#import "MADArchive.h"

@interface ViewController ()

@end

@implementation ViewController

#define kFilename @"archive"
#define kDataKey @"Data"

-(NSString *) dataFilePath{
    NSArray *path=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docDirectory =[path objectAtIndex:0];
    return [docDirectory stringByAppendingPathComponent:kFilename];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *filePath=[self dataFilePath];
    if([[NSFileManager defaultManager] fileExistsAtPath:filePath]){
        NSData *data=[[NSMutableData alloc]initWithContentsOfFile:[self dataFilePath]];
        NSKeyedUnarchiver *unarchive=[[NSKeyedUnarchiver alloc] initForReadingWithData:data];
        MADArchive *taskArchive=[unarchive decodeObjectForKey:kDataKey];
        _task1.text=taskArchive.taskone;
        _task2.text=taskArchive.tasktwo;
        _task3.text=taskArchive.taskthree;
        _task4.text=taskArchive.taskfour;
        
    }
    
    UIApplication *app=[UIApplication sharedApplication];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationWillResignActive:) name:UIApplicationWillResignActiveNotification object:app];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)applicationWillResignActive:(NSNotification *)notification{
    MADArchive *taskArchive=[[MADArchive alloc] init];
    taskArchive.taskone=_task1.text;
    taskArchive.tasktwo=_task2.text;
    taskArchive.taskthree=_task3.text;
    taskArchive.taskfour=_task4.text;
    NSMutableData *data=[[NSMutableData alloc]init];
    NSKeyedArchiver *archiver=[[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
    [archiver encodeObject:taskArchive forKey:kDataKey];
    [data writeToFile:[self dataFilePath] atomically:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
