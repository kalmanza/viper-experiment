//
//  PictureOfTheDayPresenter.h
//  NASAPOD
//
//  Created by Kevin Almanza on 4/7/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PictureOfTheDayInterface.h"
#import "PictureOfTheDayInteractorInterface.h"
#import "PictureOfTheDayControllerInterface.h"
#import "PictureOfTheDayInteractorDelegate.h"

@interface PictureOfTheDayPresenter : NSObject <PictureOfTheDayInterface, PictureOfTheDayInteractorDelegate>

@property (strong, nonatomic) id<PictureOfTheDayInteractorInterface> interactor;
@property (weak, nonatomic) UIViewController<PictureOfTheDayControllerInterface> *controller;

@end
