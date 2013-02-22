//
//  Accelerometer2ViewController.m
//  test
//
//  Created by Yung Poon on 23/11/2012.
//  Copyright (c) 2012 Selina Poon. All rights reserved.
//

#import "Accelerometer2ViewController.h"


@implementation Accelerometer2ViewController

@synthesize image;
@synthesize delta;

- (void)viewDidLoad
{
    UIAccelerometer *accel = [UIAccelerometer sharedAccelerometer];
    accel.delegate = self;
    accel.updateInterval = 1.0f / 60.0f;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)accelerometer:(UIAccelerometer *)accelerometer
        didAccelerate:(UIAcceleration *)acceleration {
    
    NSLog(@"x : %g", acceleration.x);
    NSLog(@"y : %g", acceleration.y);
    NSLog(@"z : %g", acceleration.z);
    
    delta.y = acceleration.y * 10;
    delta.x = acceleration.x * 10;
    if (image.center.x + delta.x < 768 && image.center.x + delta.x > 0 && image.center.y - delta.y < 1024 && image.center.y - delta.y > 0) {
        image.center = CGPointMake( image.center.x + delta.x, image.center.y - delta.y);
    }
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end