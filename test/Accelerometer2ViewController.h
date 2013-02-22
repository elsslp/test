//
//  Accelerometer2ViewController.h
//  test
//
//  Created by Yung Poon on 23/11/2012.
//  Copyright (c) 2012 Selina Poon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Accelerometer2ViewController : UIViewController <UIAccelerometerDelegate> {
    UIImageView *image;
    CGPoint delta;
    
}

@property (nonatomic) IBOutlet UIImageView *image;
@property CGPoint delta;

@end
