//
//  MSAppDelegate.m
//  MutydaExample
//
//  Created by Admin on 13.09.15.
//  Copyright (c) 2015 MeshSoft Ltd. All rights reserved.
//

#import "MSAppDelegate.h"
#import "Mutyda.h"
#import "MSViewController.h"

@implementation MSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}
							

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    Mutyda* m=[[Mutyda alloc] init];
    NSString* jsonMutydaData=[m checkAuthenticationResultFromURL:url];
    
    if ([jsonMutydaData length]!=0)
    {
        MSViewController* mainController = (MSViewController*) self.window.rootViewController;
        [mainController resultTextView].text=jsonMutydaData;
        NSLog(@"JSON string from Mutyda service: %@",jsonMutydaData);
        
        
    }
    return YES;
}

@end
