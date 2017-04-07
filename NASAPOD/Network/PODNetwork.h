//
//  PODNetwork.h
//  NASAPOD
//
//  Created by Kevin Almanza on 4/5/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>


@interface PODNetwork : AFHTTPSessionManager

+ (instancetype)defaultNetwork;

@end
