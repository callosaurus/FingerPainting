//
//  DrawingView.h
//  FingerPainting
//
//  Created by Callum Davies on 2017-02-17.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawingView : UIView

@property (nonatomic, strong) UIBezierPath *path;
@property (nonatomic) UIColor *drawingColor;
@property (nonatomic) CGFloat drawWidth;
@property (nonatomic) NSMutableArray *linesDrawn;

-(void)removeLastLine;

@end
