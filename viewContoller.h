//
//  ViewController.h
//  papayamovement
//
//  Created by Valles, Jaeson on 11/10/14.
//  Copyright (c) 2014 Valles, Jaeson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@interface ViewContoller : UIViewController {
    IBOutlet UIImageView *object;
    CGPoint pos;
    NSTimer *timer;
}

- (IBAction)Start;
@end

