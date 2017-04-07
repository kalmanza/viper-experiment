//
//  ViewController.h
//  NASAPOD
//
//  Created by Kevin Almanza on 4/5/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PictureOfTheDayInterface.h"
#import "PictureOfTheDayControllerInterface.h"

@interface PictureOfTheDayViewController : UIViewController <PictureOfTheDayControllerInterface>

@property (strong, nonatomic) id<PictureOfTheDayInterface> eventHandler;

@end

