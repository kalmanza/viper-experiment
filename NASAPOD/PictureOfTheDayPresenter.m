//
//  PictureOfTheDayPresenter.m
//  NASAPOD
//
//  Created by Kevin Almanza on 4/7/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import "PictureOfTheDayPresenter.h"
#import "PictureOfTheDay.h"
#import "PODDisplayItem.h"

@implementation PictureOfTheDayPresenter

- (void)getPictureOfTheDay
{
    [self.interactor getPictureOfTheDay];
}

- (void)pictureOfTheDayInteractorDidGetPictureOfTheDay:(PODDisplayItem *)picture
{
    if (!picture) {
        NSLog(@"no picture returned from picture service");
    }
}

- (void)pictureOfTheDayInteractorDidFailToGetPictureOfTheDay:(NSError *)error
{
    NSLog(@"error returned from picture service");
        //do nothing
}

- (void)pictureOfThedayInteractorDidGetImage:(UIImage *)image
{
    if (!image) {
        NSLog(@"no image returned from picture service");
        return;
    }
    [self.controller setPictureOfTheDay:image];
}

@end
