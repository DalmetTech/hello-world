//
//  PromoteViewController.m
//  MainViewList
//
//  Created by Dalmet Tech on 19/08/14.
//  Copyright (c) 2014 DalmetTechnologies. All rights reserved.
//

//Controller
#import "PromoteViewController.h"

@interface PromoteViewController ()<UITextFieldDelegate,UITableViewDataSource,UITableViewDelegate,UIActionSheetDelegate>

@property(nonatomic, strong) UITextField *httpLinkTextField;
@property(nonatomic, strong) UITextField *slydeURLTextField;

@end

@implementation PromoteViewController
@synthesize httpLinkTextField;
@synthesize slydeURLTextField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

#pragma mark - View Load

- (void)viewDidLoad
{
    [super viewDidLoad];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
        
        UITextField *textEntry = [[UITextField alloc] initWithFrame:CGRectMake(10, 05,300,30)];
        textEntry.backgroundColor = [UIColor clearColor];
        textEntry.tag =11;
        switch ([indexPath row]) {
            case 0:
                httpLinkTextField = textEntry;
                httpLinkTextField.delegate = self;
                [httpLinkTextField becomeFirstResponder];
                break;
                
            case 1:
                slydeURLTextField = textEntry;
                slydeURLTextField.delegate = self;
                break;
            default:
                break;
        }

        [cell.contentView addSubview:textEntry];
    }
    
    UITextField *text = (UITextField*)[cell.contentView viewWithTag:11];

    switch ([indexPath row]) {
            
        case 0:
            [text setPlaceholder:@"HTTP Link"];
            [text setReturnKeyType: UIReturnKeyNext];
            break;
            
        case 1:
            [text setPlaceholder:@"Slyde URL"];
            [text setReturnKeyType: UIReturnKeyDone];
            break;
       
            
        default:
            break;
    }
    
    return cell;
}

#pragma mark - Button Action

- (IBAction)savePromote:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)backView:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}


-(IBAction)insertNewAssetes:(id)sender{
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Facebook", @"Twitter", nil];
    [actionSheet showInView:self.view];
}

#pragma mark - UIActionSheet Delegate

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSString *buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
    
    if  ([buttonTitle isEqualToString:@"Facebook"]) {
        NSLog(@"Facebook");
    }
    else if ([buttonTitle isEqualToString:@"Facebook"]){
        NSLog(@"Twitter");
    }
}

@end
