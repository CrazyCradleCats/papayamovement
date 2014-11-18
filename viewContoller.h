//
//  ViewController.h
//  papayamovement
//
//  Created by Valles, Jaeson on 11/10/14.
//  Copyright (c) 2014 Valles, Jaeson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewContoller : UIViewController {
    IBOutlet UIImageView *papaya;
    IBOutlet UIImageView *player;
    IBOutlet UIButton *reset;
    CGPoint pos;
    NSTimer *step;
    int xDiff;
    int yDiff;
}

- (IBAction)Restart;
@end

