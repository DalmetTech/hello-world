//
//  CoverNewReleaseViewController.m
//  MainViewList
//
//  Created by Dalmet Tech on 19/08/14.
//  Copyright (c) 2014 DalmetTechnologies. All rights reserved.
//

#import "CoverNewReleaseViewController.h"
#import "CoverMySlydeViewController.h"
#import "CoverOfSlydeViewController.h"

@interface CoverNewReleaseViewController ()<UIActionSheetDelegate>


-(IBAction)insertNewAssetes:(id)sender;
@end

@implementation CoverNewReleaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
#pragma mark - View Load

- (void)viewDidLoad{
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning{
    
    [super didReceiveMemoryWarning];
}

#pragma mark - Button Action

-(IBAction)insertNewAssetes:(id)sender{
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"My Slydes", @"Cover Of Slyde", nil];
    
    [actionSheet showInView:self.view];
}

-(IBAction)updateCover:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)backView:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - UIActionSheet Delegate

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSString *buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];

    if  ([buttonTitle isEqualToString:@"My Slydes"]) {
        CoverMySlydeViewController *coverMySlydeView = [[CoverMySlydeViewController alloc]initWithNibName:@"CoverMySlydeViewController" bundle:nil];
        [self presentViewController:coverMySlydeView animated:YES completion:nil];
    }
    else if ([buttonTitle isEqualToString:@"Cover Of Slyde"]){
        CoverOfSlydeViewController *coverOfSlydeView = [[CoverOfSlydeViewController alloc]initWithNibName:@"CoverOfSlydeViewController" bundle:nil];
        [self presentViewController:coverOfSlydeView animated:YES completion:nil];
    }
}

@end
