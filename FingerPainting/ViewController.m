//
//  ViewController.m
//  FingerPainting
//
//  Created by Callum Davies on 2017-02-17.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "ViewController.h"
#import "DrawingView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet DrawingView *drawView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.drawView.userInteractionEnabled = YES;
    self.drawView.drawWidth = 1.0;
    self.drawView.drawingColor = [UIColor blackColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)blackButton:(id)sender {
    self.drawView.drawingColor = [UIColor blackColor];
}
- (IBAction)brownButton:(id)sender {
    self.drawView.drawingColor = [UIColor brownColor];
}
- (IBAction)redButton:(id)sender {
    self.drawView.drawingColor = [UIColor redColor];
}
- (IBAction)orangeButton:(id)sender {
    self.drawView.drawingColor = [UIColor orangeColor];
}
- (IBAction)yellowButton:(id)sender {
    self.drawView.drawingColor = [UIColor yellowColor];
}
- (IBAction)greenButton:(id)sender {
    self.drawView.drawingColor = [UIColor greenColor];
}
- (IBAction)cyanButton:(id)sender {
    self.drawView.drawingColor = [UIColor cyanColor];
}
- (IBAction)blueButton:(id)sender {
    self.drawView.drawingColor = [UIColor blueColor];
}
- (IBAction)magentaButton:(id)sender {
    self.drawView.drawingColor = [UIColor magentaColor];
}
- (IBAction)purpleButton:(id)sender {
    self.drawView.drawingColor = [UIColor purpleColor];
}


@end
