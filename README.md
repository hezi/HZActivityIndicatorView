#HZActivityIndicatorView
A highly customizable drop-in replacement for UIActivityIndicatorView

![HZActivityIndicatorView Screenshot](https://github.com/hezi/HZActivityIndicatorView/raw/master/screenshot.png)

HZActivityIndicatorView has to be compiled with ARC, a branch with classic memory managment might be added soon.

##Usage

HZActivityIndicatorView can be used just like UIActivityIndicatorView and supports the default UIKit styles for activity indicators.

    HZActivityIndicatorView *activityIndicator = [[HZActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
	[activityIndicator startAnimating];

##Customization

A few extra properties allow you to further customize the activity indicator

	// size is automatically calculated using finSize and indicatorRadius,
	// so no need to set it.
    HZActivityIndicatorView *activityIndicator = 
		[[HZActivityIndicatorView alloc] initWithFrame:CGRectMake(50, 50, 0, 0)];

	// set the number of "fins" in our indicator
    activityIndicator.steps = 8; 
    
	// size of each fin
	activityIndicator.finSize = CGSizeMake(17, 10);

	// which corners are round
	activityIndicator.roundedCoreners = UIRectCornerAllCorners;
	
	// corner radius of fins
    activityIndicator.cornerRadii = CGSizeMake(0, 0);

	// radius of the inner circle
    activityIndicator.indicatorRadius = 20;

	// animation interval
    activityIndicator.stepDuration = 0.1;

	// indicator color
    activityIndicator.color = [UIColor colorWithRed:85.0/255.0 green:0.0 blue:0.0 alpha:1.000];

	// animation direction
    activityIndicator.direction = HZActivityIndicatorDirectionCounterClockwise;

    [activityIndicator startAnimating];

##Known Issues

* default styles are still a bit off.


###Copyright
Copyright 2011 Hezi Cohen. All rights reserved. See LICENSE for more details.