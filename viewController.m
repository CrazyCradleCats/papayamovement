//
//  ViewController.m
//  papayamovement
//
//  Created by Valles, Jaeson on 11/10/14.
//  Copyright (c) 2014 Valles, Jaeson. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (IBAction)Start{
    timer = [NSTimer scheduledTimerWithTimeInterval:(0.03) target:self selector:(onTimer) userInfo: nil repeats:YES];
    pos = CGPointMake(5.0, 4.0)//Higher # = Faster x = horz & y = vert
    
}

- (void) onTimer{
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
