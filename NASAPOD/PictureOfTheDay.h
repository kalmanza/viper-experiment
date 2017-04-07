//
//  PictureOfTheDay.h
//  NASAPOD
//
//  Created by Kevin Almanza on 4/5/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PictureOfTheDay : NSObject

@property (nonatomic, strong) NSString *dateString;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *explanation;
@property (nonatomic, strong) NSString *hdImageURLString;
@property (nonatomic, strong) NSString *stardardImageURLString;

- (instancetype)initWithDictionary:(NSDictionary *)object;

- (instancetype)initWithDateString:(NSString *)dateString title:(NSString *)title explanation:(NSString *)explanation starandardImagePath:(NSString *)sdImagePath highDefinitionImagePath:(NSString *)hdImagePath;

- (NSDate *)imageDate;
- (NSURL *)sdImageURL;
- (NSURL *)hdImageURL;

@end
