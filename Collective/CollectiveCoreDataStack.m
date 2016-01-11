//
//  CollectiveCoreDataStack.m
//  Collective
//
//  Created by Orlando Medina on 1/11/16.
//  Copyright © 2016 Medina Labs LLC Orlando Medina. All rights reserved.
//

#import "CollectiveCoreDataStack.h"

@implementation CollectiveCoreDataStack


#pragma mark Synthesized Properties.
/*Let us synthesize all of our properties in this section*/
@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;
/*Synthesize end*/








#pragma mark Core Data definitions.
/*
 O. Medina —Jan. 2016
 Create a singleton instance so I can return only one instance of the stack and not multiples. I want to make sure for memory and data integrity reasons
 Not to pull more than one version of the stack. So we will force a singleton to be created.
 */
+ (instancetype)defaultStack{
    static CollectiveCoreDataStack *defaultStack;
    
    static dispatch_once_t onceToken;
    
    //Use GCD to make sure we have a singleton. We are calling the token by value to make sure of this.
    dispatch_once(&onceToken, ^{
        defaultStack =[[self alloc]init];
    });
    
    return defaultStack;
}





- (NSURL *)applicationDocumentsDirectory {
    // The directory the application uses to store the Core Data store file. This code uses a directory named "MedinaLabs.Collective" in the application's documents directory.
    NSURL*url = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
    
    //output the the location of the sql lite DB.
    NSLog(@"%@",url.absoluteString);
    
    return url;
    
}

- (NSManagedObjectModel *)managedObjectModel {
    // The managed object model for the application.
    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"Collective" withExtension:@"momd"];
    _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return _managedObjectModel;
}








- (NSPersistentStoreCoordinator *)persistentStoreCoordinator {
    // The persistent store coordinator for the application. This implementation creates and returns a coordinator, having added the store for the application to it.
    if (_persistentStoreCoordinator != nil) {
        return _persistentStoreCoordinator;
    }
    
    // Create the coordinator and store
    
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"Collective.sqlite"];
    NSError *error = nil;
    NSString *failureReason = @"There was an error creating or loading the application's saved data.";
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        // Report any error we got.
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        dict[NSLocalizedDescriptionKey] = @"Failed to initialize the application's saved data";
        dict[NSLocalizedFailureReasonErrorKey] = failureReason;
        dict[NSUnderlyingErrorKey] = error;
        error = [NSError errorWithDomain:@"YOUR_ERROR_DOMAIN" code:9999 userInfo:dict];
        // Replace this with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);

    }
    
    return _persistentStoreCoordinator;
}






- (NSManagedObjectContext *)managedObjectContext {
    // Returns the managed object context for the application (which is already bound to the persistent store coordinator for the application.)
    if (_managedObjectContext != nil) {
        return _managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (!coordinator) {
        return nil;
    }
    _managedObjectContext = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
    [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    return _managedObjectContext;
}









#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil) {
        NSError *error = nil;
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) {
            // Replace this implementation with code to handle the error appropriately.
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        }
    }
}





@end
