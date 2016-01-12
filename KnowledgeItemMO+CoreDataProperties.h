//
//  KnowledgeItemMO+CoreDataProperties.h
//  Collective
//
//  Created by Orlando Medina on 1/11/16.
//  PLEASE SEE ATTACHED MIT LICENSE..
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "KnowledgeItemMO.h"

NS_ASSUME_NONNULL_BEGIN

@interface KnowledgeItemMO (CoreDataProperties)

@property (nonatomic) int64_t knowledgeItemId;
@property (nonatomic) NSTimeInterval knowledgeItemitemDate;
@property (nullable, nonatomic, retain) NSString *knowledgeItemProblemItem;
@property (nullable, nonatomic, retain) NSString *knowledgeItemSolutionItem;
@property (nullable, nonatomic, retain) NSString *knowledgeItemTitle;

@end

NS_ASSUME_NONNULL_END
