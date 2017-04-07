//
//  PictureOfTheDayInteractor.h
//  NASAPOD
//
//  Created by Kevin Almanza on 4/7/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PictureOfTheDayInteractorInterface.h"
#import "PictureOfTheDayInteractorDelegate.h"

@class PODPictureService;

@interface PictureOfTheDayInteractor : NSObject <PictureOfTheDayInteractorInterface>

@property (strong, nonatomic) PODPictureService *pictureService;
@property (weak, nonatomic) id <PictureOfTheDayInteractorDelegate> delegate;

- (instancetype)initWithPictureService:(PODPictureService *)pictureService delegate:(id<PictureOfTheDayInteractorDelegate>)delegate;

@end
