//
//  KnowledgeItemMO.m
//  Collective
//
//  Created by Orlando Medina on 1/11/16.
//  Copyright © 2016 Medina Labs LLC Orlando Medina. All rights reserved.
//

#import "KnowledgeItemMO.h"

@implementation KnowledgeItemMO

/*
 For the headings I will be using the date from the time the item was created.
 */
- (NSString *)sectionName{
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:self.knowledgeItemitemDate];
    
    NSDateFormatter *dateFormatter =[[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"MMM yyyy"];
    
    return [dateFormatter stringFromDate:date];
}


@end
