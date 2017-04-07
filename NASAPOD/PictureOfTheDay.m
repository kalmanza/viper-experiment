//
//  PictureOfTheDay.m
//  NASAPOD
//
//  Created by Kevin Almanza on 4/5/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import "PictureOfTheDay.h"



@implementation PictureOfTheDay
+ (NSDateFormatter *)dateFormatter
{
    static NSDateFormatter *pictureOfTheDayDateFormatter;
    if (!pictureOfTheDayDateFormatter) {
        pictureOfTheDayDateFormatter = [[NSDateFormatter alloc] init];
    }
    return pictureOfTheDayDateFormatter;
}

- (instancetype)initWithDictionary:(NSDictionary *)object
{
    NSString *date = object[@"date"];
    NSString *title = object[@"title"];
    NSString *explanation = object[@"explanation"];
    NSString *sdimage = object[@"url"];
    NSString *hdimage = object[@"hdurl"];
    return [self initWithDateString:date title:title explanation:explanation starandardImagePath:sdimage highDefinitionImagePath:hdimage];
}

- (instancetype)initWithDateString:(NSString *)dateString title:(NSString *)title explanation:(NSString *)explanation starandardImagePath:(NSString *)sdImagePath highDefinitionImagePath:(NSString *)hdImagePath
{
    self = [super init];
    if (self) {
        _dateString = dateString;
        _title = title;
        _explanation = explanation;
        _stardardImageURLString = sdImagePath;
        _hdImageURLString = hdImagePath;
    }
    return self;
}

- (NSDate *)imageDate
{
    if (!self.dateString.length) {
        return nil;
    }
    return [[PictureOfTheDay dateFormatter] dateFromString:self.dateString];
}

- (NSURL *)sdImageURL
{
    if (!self.stardardImageURLString.length) {
        return nil;
    }
    return [NSURL URLWithString:self.stardardImageURLString];
}

- (NSURL *)hdImageURL
{
    if (!self.hdImageURLString.length) {
        return nil;
    }
    return [NSURL URLWithString:self.hdImageURLString];
}

@end
