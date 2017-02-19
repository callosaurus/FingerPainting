//
//  DrawingView.m
//  FingerPainting
//
//  Created by Callum Davies on 2017-02-17.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "DrawingView.h"

@implementation DrawingView

//- (instancetype)init:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        self.path = [UIBezierPath new];
//        self.pathsDrawn = [NSMutableArray new];
//
//    }
//    return self;
//}

-(instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.path = [UIBezierPath new];
        self.drawingColor = [UIColor redColor];
        self.drawWidth = 1.0;

    }
    return self;
}


-(void)drawRect:(CGRect)rect
{
    self.path.lineCapStyle = kCGLineCapRound;
    [self.drawingColor setStroke];
    [self.path setLineWidth:self.drawWidth];
    [self.path stroke];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CGPoint touchPoint = [[touches anyObject] locationInView:self];
//    self.path = [UIBezierPath bezierPath];
    [self.path moveToPoint:touchPoint];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    CGPoint touchPoint = [[touches anyObject] locationInView:self];
    [self.path addLineToPoint:touchPoint];
    
    //smooth lines goes here
    //...
    
    //calls drawRect as previously overriden
    [self setNeedsDisplay];
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesEnded:touches withEvent:event];
    CGPoint touchPoint = [[touches anyObject] locationInView:self];
    [self.path addLineToPoint:touchPoint];
    
    
}

@end
