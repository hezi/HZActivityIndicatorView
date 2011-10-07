//
//  HZActivityIndicator.h
//  ActivityIndicatorDemo
//
//  Created by Hezi Cohen on 10/7/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum HZActivityIndicatorDirection
{
    HZActivityIndicatorDirectionClockwise = -1,
    HZActivityIndicatorDirectionCounterClockwise = 1
} HZActivityIndicatorDirection;

@interface HZActivityIndicatorView : UIView
{
    NSUInteger      _steps;
    CGFloat         _stepDuration;
    BOOL            _isAnimating;
    
    UIColor                         *_color;
    BOOL                            _hidesWhenStopped;
    UIRectCorner                    _roundedCoreners;
    CGSize                          _cornerRadii;
    CGSize                          _finSize;
    HZActivityIndicatorDirection    _direction;
    UIActivityIndicatorViewStyle    _actualActivityIndicatorViewStyle;
}

@property (nonatomic) NSUInteger                    steps;
@property (nonatomic) NSUInteger                    indicatorRadius;
@property (nonatomic) CGFloat                       stepDuration;
@property (nonatomic) CGSize                        finSize;
@property (nonatomic, strong) UIColor               *color;
@property (nonatomic) UIRectCorner                  roundedCoreners;
@property (nonatomic) CGSize                        cornerRadii;
@property (nonatomic) HZActivityIndicatorDirection  direction;
@property (nonatomic) UIActivityIndicatorViewStyle  activityIndicatorViewStyle;

@property(nonatomic) BOOL                           hidesWhenStopped;

- (id)initWithActivityIndicatorStyle:(UIActivityIndicatorViewStyle)style;

- (void)startAnimating;
- (void)stopAnimating;
- (BOOL)isAnimating;

- (CGPathRef)finPathForRect:(CGRect)rect;

@end
