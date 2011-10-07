//
//  HZActivityIndicatorSubclassExample.m
//  ActivityIndicatorDemo
//
//  Created by Hezi Cohen on 10/7/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "HZActivityIndicatorSubclassExample.h"

@implementation HZActivityIndicatorSubclassExample

- (CGPathRef)finPathForRect:(CGRect)rect
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:rect.origin];
    [path addCurveToPoint:CGPointMake(CGRectGetMaxX(rect), CGRectGetMaxY(rect))
            controlPoint1:CGPointMake(CGRectGetMaxX(rect), CGRectGetMinY(rect)/4)
            controlPoint2:CGPointMake(CGRectGetMinX(rect), CGRectGetMaxY(rect))];
    
    return [path CGPath];
    
}

@end
