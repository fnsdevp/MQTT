//
//  AppDelegate.h
//  MQTTCheck
//
//  Created by FNSPL on 13/03/18.
//  Copyright © 2018 fnspl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

