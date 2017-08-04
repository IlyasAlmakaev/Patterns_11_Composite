//
//  AppDelegate.m
//  Patterns_11_Composite
//
//  Created by Ильяс on 04.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "AppDelegate.h"
#import "Container.h"
#import "LeafObject.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    Container *rootContainer = [[Container alloc] init];
    LeafObject *object = [[LeafObject alloc] init];
    object.leafValue = @"level1 value";
    [rootContainer addComponent:object];
    
    Container *firstLevelContainer1 = [[Container alloc] init];
    LeafObject *object2 = [[LeafObject alloc] init];
    object2.leafValue = @"level2 value";
    [firstLevelContainer1 addComponent:object2];
    [rootContainer addComponent:firstLevelContainer1];
    
    Container *firstLevelContainer2 = [[Container alloc] init];
    LeafObject *object3 = [[LeafObject alloc] init];
    object3.leafValue = @"level2 value 2";
    [firstLevelContainer2 addComponent:object3];
    [rootContainer addComponent:firstLevelContainer2];
    
    NSLog(@"%@", rootContainer.getData);
    
    return YES;
}

@end
