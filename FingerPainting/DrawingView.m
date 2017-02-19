//
//  DrawingView.m
//  FingerPainting
//
//  Created by Callum Davies on 2017-02-17.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "DrawingView.h"
#import "Line.h"

@implementation DrawingView

//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        self.drawWidth = 1.0;
//        
//    }
//    return self;
//}

-(instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.path = [UIBezierPath new];
        self.drawWidth = 14.0;
        self.linesDrawn = [NSMutableArray new];

    }
    return self;
}


-(void)drawRect:(CGRect)rect
{
    
    //draw "old" lines in linesDrawn
    for (Line *lines in self.linesDrawn) {
        [lines.lineColor setStroke];
        [lines setLineWidth:14.0];
        [lines.linePath stroke];
    }
    
     
    //draw current line
    self.path.lineCapStyle = kCGLineCapRound;
    [self.drawingColor setStroke];
    [self.path setLineWidth:self.drawWidth];
    [self.path stroke];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.path = [UIBezierPath new];
    CGPoint touchPoint = [[touches anyObject] locationInView:self];
    [self.path moveToPoint:touchPoint];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    CGPoint touchPoint = [[touches anyObject] locationInView:self];
    [self.path addLineToPoint:touchPoint];
    
    //smooth lines will go here
    //...
    //addQuadCurveToPoint: etcetc
    
    [self setNeedsDisplay];
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesEnded:touches withEvent:event];
    CGPoint touchPoint = [[touches anyObject] locationInView:self];
    [self.path addLineToPoint:touchPoint];
    
    //"save" current line in array of linesDrawn
    Line *newLine = [Line new];
    newLine.linePath = self.path;
    newLine.lineColor = self.drawingColor;
    newLine.lineWidth = self.drawWidth;
    [self.linesDrawn addObject:newLine];
//    [self setNeedsDisplay];
    self.path = nil;
    [self setNeedsDisplay];

}

-(void)removeLastLine
{
    [self.linesDrawn removeLastObject];
    [self setNeedsDisplay];
}

@end
