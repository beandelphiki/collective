//
//  KnowledgeItemMO.h
//  Collective
//
//  Created by Orlando Medina on 1/11/16.
//  PLEASE SEE ATTACHED MIT LICENSE..
//



/*
 This is the foundation of our class. KnowledgeItemMO+CoreDataProperties can be changed and updated in a genaral safe manner.
 If we need to add some custom items not in the CoreData Context we can add that here.
 
 */
#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface KnowledgeItemMO : NSManagedObject


//This is for the heading name. It should display for example for a heading JAN 2016 for the time period the entry was made.
- (NSString *)sectionName;
@end

NS_ASSUME_NONNULL_END

#import "KnowledgeItemMO+CoreDataProperties.h"
