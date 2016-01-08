//
//  KnowledgeItemMO+CoreDataProperties.h
//  Collective
//
//  Created by Orlando Medina on 1/7/16.
//  Copyright © 2016 Medina Labs LLC Orlando Medina. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "KnowledgeItemMO.h"

NS_ASSUME_NONNULL_BEGIN

@interface KnowledgeItemMO (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *knowledgeItemId;
@property (nullable, nonatomic, retain) NSDate *knowledgeItemitemDate;
@property (nullable, nonatomic, retain) NSString *knowledgeItemProblemItem;
@property (nullable, nonatomic, retain) NSString *knowledgeItemSolutionItem;
@property (nullable, nonatomic, retain) NSString *knowledgeItemTitle;

@end

NS_ASSUME_NONNULL_END
