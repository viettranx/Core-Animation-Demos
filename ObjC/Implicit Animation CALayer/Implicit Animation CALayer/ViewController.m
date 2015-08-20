//
//  ViewController.m
//  Implicit Animation CALayer
//
//  Created by Tran Viet on 8/20/15.
//  Copyright (c) 2015 Viettranx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    CALayer *testLayer;
}
@property (weak, nonatomic) IBOutlet UIView *testView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    testLayer = [CALayer layer];
    testLayer.frame = self.testView.bounds;
    [self.testView.layer addSublayer:testLayer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)redTouched:(id)sender {
    testLayer.backgroundColor = [UIColor redColor].CGColor;
}

- (IBAction)greenTouched:(id)sender {
    testLayer.backgroundColor = [UIColor greenColor].CGColor;
}

- (IBAction)blueTouched:(id)sender {
    testLayer.backgroundColor = [UIColor blueColor].CGColor;
}

@end
