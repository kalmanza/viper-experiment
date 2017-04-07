//
//  PictureOfTheDayInteractor.m
//  NASAPOD
//
//  Created by Kevin Almanza on 4/7/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import "PictureOfTheDayInteractor.h"
#import "PODPictureService.h"
#import "PictureOfTheDay.h"
#import "PODDisplayItem.h"

@implementation PictureOfTheDayInteractor

- (instancetype)initWithPictureService:(PODPictureService *)pictureService delegate:(id<PictureOfTheDayInteractorDelegate>)delegate
{
    self = [super init];
    if (self) {
        _pictureService = pictureService;
        _delegate = delegate;
    }
    return self;
}

- (void)getPictureOfTheDay
{
    [self.pictureService getPictureOfTheDay:^(PictureOfTheDay *picture, NSError *error) {
        if (error) {
            [self.delegate pictureOfTheDayInteractorDidFailToGetPictureOfTheDay:error];
            return;
        }
        PODDisplayItem *displayItem = [self displayItemWithPictureOfTheDay:picture];
        [self.delegate pictureOfTheDayInteractorDidGetPictureOfTheDay:displayItem];
        [self getImageForPictureOfTheDay:picture];
    }];
}

- (PODDisplayItem *)displayItemWithPictureOfTheDay:(PictureOfTheDay *)picture
{
    return [[PODDisplayItem alloc] initWithDate:picture.dateString title:picture.title explanation:picture.explanation];
}

- (void)getImageForPictureOfTheDay:(PictureOfTheDay *)picture
{
    [self.pictureService getImageForURL:[picture sdImageURL] withCompletion:^(UIImage *image) {
        [self.delegate pictureOfThedayInteractorDidGetImage:image];
        if (picture.hdImageURLString.length) {
            [self.pictureService getImageForURL:[picture hdImageURL] withCompletion:^(UIImage *image) {
                [self.delegate pictureOfThedayInteractorDidGetImage:image];
            }];
        }
    }];
}

@end
