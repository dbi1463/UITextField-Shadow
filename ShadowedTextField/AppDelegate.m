//
//  AppDelegate.m
//  ShadowedTextField
//
//  Created by Spirit Tu on 5/26/2014.
//  Copyright (c) 2014 Spirit Tu. All rights reserved.
//

#import "AppDelegate.h"

#import "TestViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions {
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	self.window.rootViewController = [[TestViewController alloc] initWithNibName:@"TestView" bundle:nil];
	[self.window makeKeyAndVisible];
	return YES;
}

@end
