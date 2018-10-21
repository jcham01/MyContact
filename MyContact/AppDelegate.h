//
//  AppDelegate.h
//  MyContact
//
//  Created by toto on 14/10/2018.
//  Copyright © 2018 perso. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end
