//
//  PODNetwork.m
//  NASAPOD
//
//  Created by Kevin Almanza on 4/5/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import "PODNetwork.h"

static NSString * const kNASAPODBaseURL = @"https://api.nasa.gov/planetary/";

@implementation PODNetwork

+ (instancetype)defaultNetwork
{
    NSURL *url = [NSURL URLWithString:kNASAPODBaseURL];
    return [[PODNetwork manager] initWithBaseURL:url];
}


@end
