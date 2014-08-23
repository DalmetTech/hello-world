//
//  HPAppDelegate.h
//  MainViewList
//
//  Created by Dalmet Tech on 19/08/14.
//  Copyright (c) 2014 DalmetTechnologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@class MainViewController;
@interface HPAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) MainViewController *mainView;
@property (strong, nonatomic) UIWindow *window;

@end
