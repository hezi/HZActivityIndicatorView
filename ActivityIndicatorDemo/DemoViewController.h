//
//  DemoViewController.h
//  ActivityIndicatorDemo
//
//  Created by Hezi Cohen on 10/7/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HZActivityIndicator.h"

@interface DemoViewController : UIViewController
@property (unsafe_unretained, nonatomic) IBOutlet HZActivityIndicator *customIndicator;
@property (unsafe_unretained, nonatomic) IBOutlet UIActivityIndicatorView *nativeIndicator;

@end
