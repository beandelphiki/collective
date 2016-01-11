//
//  KnowledgeItemMO.h
//  Collective
//
//  Created by Orlando Medina on 1/11/16.
//  Copyright © 2016 Medina Labs LLC Orlando Medina. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface KnowledgeItemMO : NSManagedObject

- (NSString *)sectionName;
@end

NS_ASSUME_NONNULL_END

#import "KnowledgeItemMO+CoreDataProperties.h"
