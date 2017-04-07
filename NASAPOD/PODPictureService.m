//
//  RemoteStore.m
//  NASAPOD
//
//  Created by Kevin Almanza on 4/5/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import "PODPictureService.h"
#import "PODNetwork.h"
#import "PictureOfTheDay.h"

static NSString * const kPictureOfTheDayPath = @"apod";
static NSString * const kAuthKey = @"JIxPTaUllXtgnIB4dpK5m7G5mLcq1g6kGOnYj8Wz";

@implementation PODPictureService

+ (instancetype)defaultService
{
    PODNetwork *defaultNetwork = [PODNetwork defaultNetwork];
    PODPictureService *defaultStore = [[PODPictureService alloc] initWithNetwork:defaultNetwork];
    return defaultStore;
}

- (instancetype)initWithNetwork:(PODNetwork *)network
{
    self = [super init];
    if (self) {
        _network = network;
    }
    return self;
}

- (void)getPictureOfTheDay:(void (^)(PictureOfTheDay *, NSError *))completion
{
    [self.network GET:kPictureOfTheDayPath parameters:@{@"api_key":kAuthKey} progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (!completion) {
            return;
        }
        if (![responseObject isKindOfClass:[NSDictionary class]]) {
            completion(nil, nil); //return some error later indicating unknown response type
        }
        PictureOfTheDay *picture = [[PictureOfTheDay alloc] initWithDictionary:responseObject];
        completion(picture, nil);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (!completion) {
            return;
        }
        completion(nil, error);
    }];
}

- (void)getImageForURL:(NSURL *)url withCompletion:(void (^)(UIImage *image))completion
{
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [[self.network downloadTaskWithRequest:request progress:nil destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {
        NSArray *urls = [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
        NSURL *documentsURL = [urls firstObject];
        return [documentsURL URLByAppendingPathComponent:[response suggestedFilename]];
        
    } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
        if (!completion) {
            return;
        }
        if (!filePath) {
            completion(nil);
        }
        if (filePath) {
            UIImage *image = [UIImage imageWithContentsOfFile:filePath.path];
            completion(image);
        }
    }] resume];
}

@end
