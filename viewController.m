//
//  ViewController.m
//  papayamovement
//
//  Created by Valles, Jaeson on 11/10/14.
//  Copyright (c) 2014 Valles, Jaeson. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (IBAction)Restart{
    [step invalidate];
    pos = CGPointMake(5.0, 2.0);//Higher # = Faster x = horz & y = vert
    randomizer = 0;
    papaya.center = CGPointMake(160, 240);
    step = [NSTimer scheduledTimerWithTimeInterval:(0.03) target:self selector:(onTimer) userInfo: nil repeats:YES];
}

- (void) onTimer{
    if(randomizer % 2 > 0){
        if(papaya.center.x > 320)
            pos.x = -1*(pos.x + 0.25);
        else if(papaya.center.x < 0)
            pos.x = -1*(pos.x - 0.25);
    
        if(papaya.center.y > 480)
            pos.y = -1*(pos.y - 0.75);
        else if(papaya.center.y < 0)
            pos.y = -1*(pos.y + 0.75);
        
    }else{
        if(papaya.center.x > 320)
            pos.x = -1*(pos.x - 0.25);
        else if(papaya.x < 0)
            pos.x = -1*(pos.x + 0.25);
        
        if(papaya.center.y > 480)
            pos.y = -1*(pos.y + 0.75);
        else if(papaya.center.y < 0)
            pos.y = -1*(pos.y - 0.75);
    }
    papaya.center = CGPointMake(papaya.center.x + pos.x, papaya.center.y + pos.y);
}
- (void)viewDidLoad {
    [super viewDidLoad];
    step = [NSTimer scheduledTimerWithTimeInterval:(0.03) target:self selector:@selector(onTimer) userInfo: nil repeats:YES];
    pos = CGPointMake(5.0, 2.0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
