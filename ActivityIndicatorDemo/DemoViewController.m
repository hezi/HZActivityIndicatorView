//
//  DemoViewController.m
//  ActivityIndicatorDemo
//
//  Created by Hezi Cohen on 10/7/11.
//  Copyright (c) 2011 Hezi Cohen. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
// 
// Redistributions of source code must retain the above copyright notice,
// this list of conditions and the following disclaimer.
// 
// Redistributions in binary form must reproduce the above copyright
// notice, this list of conditions and the following disclaimer in the
// documentation and/or other materials provided with the distribution.
// 
// Neither the name of the project's author nor the names of its
// contributors may be used to endorse or promote products derived from
// this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
// FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
// TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
// PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
// LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
// NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//

#import "DemoViewController.h"

#import "HZActivityIndicatorView.h"
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

    HZActivityIndicatorView *activityIndicator = [[HZActivityIndicatorView alloc] initWithFrame:CGRectMake(50, 50, 0, 0)];
    activityIndicator.backgroundColor = self.view.backgroundColor;
    activityIndicator.opaque = YES;
    activityIndicator.steps = 8;
    activityIndicator.finSize = CGSizeMake(17, 10);
    activityIndicator.indicatorRadius = 20;
    activityIndicator.stepDuration = 0.150;
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

    activityIndicator = [[HZActivityIndicatorView alloc] initWithFrame:CGRectMake(50, 150, 0, 0)];
    activityIndicator.backgroundColor = self.view.backgroundColor;
    activityIndicator.opaque = YES;
    activityIndicator.steps = 16;
    activityIndicator.finSize = CGSizeMake(8, 40);
    activityIndicator.indicatorRadius = 20;
    activityIndicator.stepDuration = 0.100;
    activityIndicator.color = [UIColor colorWithRed:0.0 green:34.0/255.0 blue:85.0/255.0 alpha:1.000];
    activityIndicator.roundedCoreners = UIRectCornerTopRight;
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
