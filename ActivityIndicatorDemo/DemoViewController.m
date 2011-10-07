//
//  DemoViewController.m
//  ActivityIndicatorDemo
//
//  Created by Hezi Cohen on 10/7/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "DemoViewController.h"

#import "HZActivityIndicator.h"
#import "HZActivityIndicatorSubclassExample.h"

@implementation DemoViewController
@synthesize customIndicator;
@synthesize nativeIndicator;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    HZActivityIndicator *activityIndicator = [[HZActivityIndicator alloc] initWithFrame:CGRectMake(50, 50, 0, 0)];
    activityIndicator.backgroundColor = self.view.backgroundColor;
    activityIndicator.opaque = YES;
    activityIndicator.steps = 8;
    activityIndicator.finSize = CGSizeMake(17, 10);
    activityIndicator.indicatorRadius = 20;
    activityIndicator.stepDuration = 0.1;
    activityIndicator.color = [UIColor colorWithRed:85.0/255.0 green:0.0 blue:0.0 alpha:1.000];
    activityIndicator.cornerRadii = CGSizeMake(0, 0);
    [activityIndicator startAnimating];
    [self.view addSubview:activityIndicator];
    
    activityIndicator = [[HZActivityIndicatorSubclassExample alloc] initWithFrame:CGRectMake(150, 50, 0, 0)];
    activityIndicator.backgroundColor = self.view.backgroundColor;
    activityIndicator.opaque = YES;
    activityIndicator.steps = 8;
    activityIndicator.finSize = CGSizeMake(20, 10);
    activityIndicator.indicatorRadius = 10;
    activityIndicator.stepDuration = 0.0570;
    activityIndicator.roundedCoreners = UIRectCornerAllCorners;
    activityIndicator.cornerRadii = CGSizeMake(4, 4);
    activityIndicator.color = [UIColor darkGrayColor];
    activityIndicator.direction = HZActivityIndicatorDirectionCounterClockwise;
    [activityIndicator startAnimating];
    [self.view addSubview:activityIndicator];

    activityIndicator = [[HZActivityIndicator alloc] initWithFrame:CGRectMake(50, 150, 0, 0)];
    activityIndicator.backgroundColor = self.view.backgroundColor;
    activityIndicator.opaque = YES;
    activityIndicator.steps = 16;
    activityIndicator.finSize = CGSizeMake(8, 40);
    activityIndicator.indicatorRadius = 20;
    activityIndicator.stepDuration = 0.100;
    activityIndicator.color = [UIColor colorWithRed:0.0 green:34.0/255.0 blue:85.0/255.0 alpha:1.000];
    activityIndicator.roundedCoreners = UIRectCornerTopLeft | UIRectCornerBottomRight;
    activityIndicator.cornerRadii = CGSizeMake(10, 10);
    [activityIndicator startAnimating];
    [self.view addSubview:activityIndicator];
    
    [customIndicator startAnimating];
    [nativeIndicator startAnimating];
}

- (void)viewDidUnload
{
    [self setCustomIndicator:nil];
    [self setNativeIndicator:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
