/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2014年 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "BeK0sukeTistrokeView.h"

@implementation BeK0sukeTistrokeView


-(id)init
{
    self = [super init];
    return self;
}

-(void)dealloc
{
    [super dealloc];
}

-(void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetBlendMode(context, kCGBlendModeNormal);
    CGContextSetLineWidth(context, width);
    CGContextSetStrokeColorWithColor(context, CGColorRetain(color));
    CGContextSetAlpha(context, alpha);
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, from.x, from.y);
    CGContextAddLineToPoint(context, to.x, to.y);
    CGContextStrokePath(context);
}

-(void)setLineWidth_:(id)args
{
    width = [TiUtils floatValue:args def:1.0f];
}

-(void)setLineColor_:(id)args
{
    color = [[TiUtils colorValue:args] _color].CGColor;
}

-(void)setLineAlpha_:(id)args
{
    alpha = [TiUtils floatValue:args def:1.0f];
}

-(void)setLineFrom_:(id)args
{
    from = [TiUtils pointValue:args];
    [self setNeedsDisplay];
}

-(void)setLineTo_:(id)args
{
    to = [TiUtils pointValue:args];
    [self setNeedsDisplay];
}

@end
