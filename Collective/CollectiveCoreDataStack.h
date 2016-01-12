//
//  CollectiveCoreDataStack.h
//  Collective
//
//  Created by Orlando Medina on 1/11/16.
//  PLEASE SEE ATTACHED MIT LICENSE..
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface CollectiveCoreDataStack : NSObject

+ (instancetype)defaultStack;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end
