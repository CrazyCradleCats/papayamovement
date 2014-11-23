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
    papaya.center = CGPointMake(160, 240);
    step = [NSTimer scheduledTimerWithTimeInterval:(0.03) target:self selector:(onTimer) userInfo: nil repeats:YES];
}

- (void) onTimer{
    [self checkDist]
    if(papaya.center.x < 0)
        pos.x = 5;
    else if(papaya.center.x > 320)
        pos.x = -5;
    else
        pos.x = xSpeed;

    if(papaya.center.y < 0)
        pos.y = 5;
    else if(papaya.center.y > 320)
        pos.y = -5;
    else
        pos.y = ySpeed;

    papaya.center = CGPointMake(papaya.center.x + pos.x, papaya.center.y + pos.y);
}
- (void) checkSpeed{
    if(papaya.center.x - player.center.x > 0){
        xSpeed = 4;
        if(papaya.center.x - player.center.x >= minDistX)
            xSpeed = 0;
    }else if(papaya.center.x - player.center.x < 0){
        xSpeed = -4;
        if(papaya.center.x-player.center.x <= -1 * minDistX)
            xSpeed = 0;
    }
    
    if(papaya.center.y - player.center.y > 0){
        ySpeed = 4;
        if(papaya.center.y - player.center.y >= minDistY)
            ySpeed = 0;
    }else if(papaya.center.y - player.center.y < 0){
        ySpeed = -4;
        if(papaya.center.y - player.center.y <= -1 * minDistY)
            ySpeed = 0;
    }
}
        
- (void)viewDidLoad {
    [super viewDidLoad];
    step = [NSTimer scheduledTimerWithTimeInterval:(0.03) target:self selector:@selector(onTimer) userInfo: nil repeats:YES];
    pos = CGPointMake(0.0, 0.0);
    xSpeed = 0;
    ySpeed = 0;
    minDistX = 64;
    minDistY = 50;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
