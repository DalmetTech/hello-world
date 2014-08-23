//
//  MainViewController.m
//  MainViewList
//
//  Created by Dalmet Tech on 19/08/14.
//  Copyright (c) 2014 DalmetTechnologies. All rights reserved.
//

#import "MainViewController.h"
#import "CoverNewReleaseViewController.h"
#import "LyricsViewController.h"
#import "PromoteViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)setCover:(id)sender{
    CoverNewReleaseViewController *coverNewReleaseView = [[CoverNewReleaseViewController alloc]initWithNibName:@"CoverNewReleaseViewController" bundle:nil];
    [self presentViewController:coverNewReleaseView animated:YES completion:nil];
}

- (IBAction)setLyrics:(id)sender{
    LyricsViewController *lyricsView = [[LyricsViewController alloc]initWithNibName:@"LyricsViewController" bundle:nil];
    [self presentViewController:lyricsView animated:YES completion:nil];
}

- (IBAction)setPromote:(id)sender{
    PromoteViewController *promoteView = [[PromoteViewController alloc]initWithNibName:@"PromoteViewController" bundle:nil];
    [self presentViewController:promoteView animated:YES completion:nil];
}
@end
