//
//  RemoteStore.h
//  NASAPOD
//
//  Created by Kevin Almanza on 4/5/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class PictureOfTheDay, PODNetwork;

@interface PODPictureService : NSObject

@property (strong, nonatomic) PODNetwork *network;

+ (instancetype)defaultService;

    ///Designated Initializer
- (instancetype)initWithNetwork:(PODNetwork *)network;

- (void)getPictureOfTheDay:(void (^)(PictureOfTheDay *picture, NSError *error))completion;

- (void)getImageForURL:(NSURL *)url withCompletion:(void (^)(UIImage *image))completion;

@end
