//
//  Line.h
//  FingerPainting
//
//  Created by Callum Davies on 2017-02-18.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Line : UIBezierPath

@property (nonatomic) UIColor *lineColor;
@property (nonatomic, strong) UIBezierPath *linePath;

@end
