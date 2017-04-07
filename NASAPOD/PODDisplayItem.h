//
//  PODDisplayItem.h
//  NASAPOD
//
//  Created by Kevin Almanza on 4/7/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PODDisplayItem : NSObject

@property (nonatomic, strong) NSString *dateString;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *explanation;

- (instancetype)initWithDate:(NSString *)date title:(NSString *)title explanation:(NSString *)explanation;

@end
