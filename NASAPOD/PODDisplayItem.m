//
//  PODDisplayItem.m
//  NASAPOD
//
//  Created by Kevin Almanza on 4/7/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import "PODDisplayItem.h"

@implementation PODDisplayItem

- (instancetype)initWithDate:(NSString *)date title:(NSString *)title explanation:(NSString *)explanation
{
    self = [super init];
    if (self) {
        _dateString = date;
        _title = title;
        _explanation = explanation;
    }
    return self;
}

@end
