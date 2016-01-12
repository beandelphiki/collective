//
//  KnowledgeItemMO.h
//  Collective
//
//  Created by Orlando Medina on 1/7/16.
//  PLEASE SEE ATTACHED MIT LICENSE..
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface KnowledgeItemMO : NSManagedObject

//This is for the heading name. It should display for example for a heading JAN 2016 for the time period the entry was made.
- (NSString *)sectionName;

@end

NS_ASSUME_NONNULL_END

#import "KnowledgeItemMO+CoreDataProperties.h"
