//
//  CoverMySlydeViewController.m
//  MainViewList
//
//  Created by Dalmet Tech on 19/08/14.
//  Copyright (c) 2014 DalmetTechnologies. All rights reserved.
//

//Controller
#import "CoverMySlydeViewController.h"

@interface CoverMySlydeViewController ()

//Action
- (IBAction)backView:(id)sender;
- (IBAction)saveMySlyde:(id)sender;

@end

@implementation CoverMySlydeViewController

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
   
}

- (IBAction)backView:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)saveMySlyde:(id)sender{
     [self dismissViewControllerAnimated:YES completion:nil];
}
@end
