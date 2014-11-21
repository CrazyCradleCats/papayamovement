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
    pos = CGPointMake(0.0, 0.0);//Higher # = Faster x = horz & y = vert
    randomizer = 0;
    papaya.x = 160.0;
    papaya.y = 240.0;
    step = [NSTimer scheduledTimerWithTimeInterval:(0.03) target:self selector:(onTimer) userInfo: nil repeats:YES];
}

- (void) onTimer{
    [self checkDist]
    if(papaya.x < 0)
        pos.x = 5;
    else if(papaya.x > 320)
        pos.x = -5;
    else
        pos.x = xSpeed;
        
    if(papaya.y < 0)
        pos.y = 5;
    else if(papaya.y > 320)
        pos.y = -5;
    else
        pos.y = ySpeed;
        
    papaya.x = papaya.x + pos.x;
    papaya.y = papaya.y + pos.y;
}
- (void) checkSpeed{
    if(papaya.x - player.x > 0){
        xSpeed = 4;
        if(papaya.x - player.x >= minDistX)
            xSpeed = 0;
    }else if(papaya.x - player.x < 0){
        xSpeed = -4;
        if(papaya.x-player.x <= -1 * minDistX)
            xSpeed = 0;
    }
    
    if(papaya.y - player.y > 0){
        ySpeed = 4;
        if(papaya.y - player.y >= minDistY)
            ySpeed = 0;
    }else if(papaya.y - player.y < 0){
        ySpeed = -4;
        if(papaya.y - player.y <= -1 * minDistY)
            ySpeed = 0;
    }
}
        
- (void)viewDidLoad {
    [super viewDidLoad];
    step = [NSTimer scheduledTimerWithTimeInterval:(0.03) target:self selector:(onTimer) userInfo: nil repeats:YES];
    pos = CGPointMake(0.0, 0.0);//Higher # = Faster x = horz & y = vert
    xSpeed = 0;
    ySpeed = 0;
    minDistX = 64;
    minDistY = 50;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
