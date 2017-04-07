//
//  NASAPODTests.m
//  NASAPODTests
//
//  Created by Kevin Almanza on 4/5/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PODPictureService.h"

@interface NASAPODTests : XCTestCase

@end

@implementation NASAPODTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatItReturnsThePictureOfTheDay
{
    PODPictureService *remoteStore = [PODPictureService defaultService];
    XCTestExpectation *expectation = [self expectationWithDescription:@"expect getpictureoftheday to return"];
    [remoteStore getPictureOfTheDay:^(PictureOfTheDay *picture, NSError *error) {
        XCTAssert(picture != nil || error != nil);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:10];
}

@end
