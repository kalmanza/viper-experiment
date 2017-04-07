//
//  PictureOfTheDayInteractorInterface.h
//  NASAPOD
//
//  Created by Kevin Almanza on 4/7/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PictureOfTheDay;

@protocol PictureOfTheDayInteractorInterface <NSObject>

- (void)getPictureOfTheDay;

@end
