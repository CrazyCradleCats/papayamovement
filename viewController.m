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
    papaya.x = 137.0;
    papaya.y = 240.0;
    step = [NSTimer scheduledTimerWithTimeInterval:(0.03) target:self selector:(onTimer) userInfo: nil repeats:YES];
}

- (void) onTimer{
    papaya = CGPointMake(papaya.x + pos.x, papaya.y + pos.y);
    
    if(randomizer % 2 > 0){
        if(papaya.x > 320)
            pos.x = -1*(pos.x + 0.25);
        else if(papaya.x < 0)
            pos.x = -1*(pos.x - 0.25);
    
        if(papaya.y > 480)
            papaya.y = -1*(pos.y - 0.75);
        else if(papaya.y < 0)
            papaya.y = -1*(pos.y + 0.75);
        
    }else{
        if(papaya.x > 320)
            pos.x = -1*(pos.x - 0.25);
        else if(papaya.x < 0)
            pos.x = -1*(pos.x + 0.25);
        
        if(papaya.y > 480)
            pos.y = -1*(pos.y + 0.75);
        else if(papaya.y < 0)
            pos.y = -1*(pos.y - 0.75);
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    step = [NSTimer scheduledTimerWithTimeInterval:(0.03) target:self selector:(onTimer) userInfo: nil repeats:YES];
    pos = CGPointMake(5.0, 2.0);//Higher # = Faster x = horz & y = vert
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
