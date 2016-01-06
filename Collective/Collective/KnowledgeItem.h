//
//  KnowledgeItem.h
//  Collective
//
//  Created by Orlando Medina on 1/6/16.
//  Copyright © 2016 Medina Labs LLC Orlando Medina. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface KnowledgeItem : NSManagedObject


@property NSString* title;
@property NSString* problemItem;
@property NSString* solutionItem;
@property NSDate* itemDate;



/*
 Add a public method to initialize an item from the context.
 */


/*
 Add a public method to add an item from the context.
 */


/*
 Add a public method to remove an item from the context.
 */


/*
 Add a public method to edit an item from the context.
 */



@end
