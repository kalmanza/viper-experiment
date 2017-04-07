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

- (void)updateControllerWithDisplayItem:(PODDisplayItem *)item
{
    [self.controller setPictureDateText:item.dateString];
    [self.controller setPictureTitleText:item.title];
    [self.controller setPictureExplanationText:item.explanation];
}

- (void)pictureOfTheDayInteractorDidGetPictureOfTheDay:(PODDisplayItem *)picture
{
    if (!picture) {
        NSLog(@"no display item returned from interactor");
    }
    [self updateControllerWithDisplayItem:picture];
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

- (void)didTapImageView
{
    [self.controller toggleExplanationDisplay];
}

@end
