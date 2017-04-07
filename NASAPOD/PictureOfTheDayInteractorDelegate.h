//
//  PictureOfTheDayInteractorDelegate.h
//  NASAPOD
//
//  Created by Kevin Almanza on 4/7/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PODDisplayItem, UIImage;

@protocol PictureOfTheDayInteractorDelegate <NSObject>

- (void)pictureOfTheDayInteractorDidGetPictureOfTheDay:(PODDisplayItem *)picture;

- (void)pictureOfTheDayInteractorDidFailToGetPictureOfTheDay:(NSError *)error;

- (void)pictureOfThedayInteractorDidGetImage:(UIImage *)image;

@end
