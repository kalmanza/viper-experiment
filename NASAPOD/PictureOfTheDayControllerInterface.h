//
//  PictureOfTheDayControllerInterface.h
//  NASAPOD
//
//  Created by Kevin Almanza on 4/7/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol PictureOfTheDayControllerInterface <NSObject>

- (void)setPictureDateText:(NSString *)dateString;
- (void)setPictureTitleText:(NSString *)title;
- (void)setPictureExplanationText:(NSString *)explanation;
- (void)setPictureOfTheDay:(UIImage *)pictureOfTheDay;
- (void)toggleExplanationDisplay;
- (void)hideExplanation;
- (void)showExplanation;

@end
