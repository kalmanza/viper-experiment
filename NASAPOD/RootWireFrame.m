//
//  RootWireFrame.m
//  NASAPOD
//
//  Created by Kevin Almanza on 4/7/17.
//  Copyright © 2017 Kevin Almanza. All rights reserved.
//

#import "RootWireFrame.h"

@implementation RootWireFrame

- (void)addRootViewController:(UIViewController *)controller toWindow:(UIWindow *)window
{
    [window setRootViewController:controller];
    [window makeKeyAndVisible];
}

@end
