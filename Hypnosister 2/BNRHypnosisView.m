//
//  BNRHypnosisView.m
//  Hypnosister 2
//
//  Created by Wei on 8/24/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    
    // Figure out the center of the bounds rectangle
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width /2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // The circle will be the largest that will fit in the view
    float radius = MIN(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBeziePath *path = [[UIBezierPath alloc] init];
    
}


@end
