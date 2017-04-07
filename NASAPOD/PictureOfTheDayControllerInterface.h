//
//  PictureOfTheDayControllerInterface.h
//  NASAPOD
//
//  Created by Kevin Almanza on 4/7/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol PictureOfTheDayControllerInterface <NSObject>

- (void)setPictureTitle:(NSString *)title;
- (void)setPictureExplanation:(NSString *)explanation;
- (void)setPictureOfTheDay:(UIImage *)pictureOfTheDay;

@end
