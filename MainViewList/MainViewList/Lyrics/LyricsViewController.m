//
//  LyricsViewController.m
//  MainViewList
//
//  Created by Dalmet Tech on 19/08/14.
//  Copyright (c) 2014 DalmetTechnologies. All rights reserved.
//

#import "LyricsViewController.h"

@interface LyricsViewController ()<UITextViewDelegate,UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate>{
    
}


@property(nonatomic, strong) UITextField *copyrightTextField;
@property(nonatomic, strong) UITextField *writerTextField;
@property(nonatomic, strong) UITextField *producerTextField;
@property(nonatomic, strong) UITextView *lyricsTextView;

@end

@implementation LyricsViewController
@synthesize copyrightTextField;
@synthesize lyricsTextView;
@synthesize producerTextField;
@synthesize writerTextField;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveLyrics:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)backView:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
            
        case 3:
            return 500;
            break;
        default:
            return 60;
            break;
    }
    return 0;
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
                copyrightTextField = textEntry;
                copyrightTextField.delegate = self;
                [copyrightTextField becomeFirstResponder];
                break;
                
            case 1:
                writerTextField = textEntry;
                writerTextField.delegate = self;
                break;
                
            case 2:
                producerTextField = textEntry;
                producerTextField.delegate = self;
                break;
                
            case 3:
                lyricsTextView = [[UITextView alloc] initWithFrame:CGRectMake(10.0f, 5.0f, 300.0f, 300.0f)];
                lyricsTextView.returnKeyType = UIReturnKeyDone;
                lyricsTextView.delegate = self;
                break;
                
            default:
                break;
        }
        
        [cell.contentView addSubview:lyricsTextView];
        [cell.contentView addSubview:textEntry];
    }
    
    UITextField *text = (UITextField*)[cell.contentView viewWithTag:11];
    UITextView *textView = (UITextView*)[cell.contentView viewWithTag:12];
    
        switch ([indexPath row]) {
                
            case 0:
                [text setPlaceholder:@"Copyright"];
                [text setReturnKeyType: UIReturnKeyNext];
                break;
                
            case 1:
                [text setPlaceholder:@"Writer"];
                [text setReturnKeyType: UIReturnKeyDone];
                break;
            case 2:
                [text setPlaceholder:@"Producer"];
                [text setReturnKeyType: UIReturnKeyDone];
                break;
            case 3:
                textView.textColor = [UIColor blackColor];
                [textView setReturnKeyType:UIReturnKeyDone];
                break;
                
            default:
                break;
        }
    
    return cell;
}


@end
