//
//  RootWireFrame.h
//  NASAPOD
//
//  Created by Kevin Almanza on 4/7/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface RootWireFrame : NSObject

- (void)addRootViewController:(UIViewController *)controller toWindow:(UIWindow *)window;

@end
