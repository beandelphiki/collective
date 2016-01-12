//
//  DetailViewEditControllerViewController.m
//  Collective
//
//  Created by Orlando Medina on 1/6/16.
//  Copyright © 2016 Medina Labs LLC Orlando Medina. All rights reserved.
//

#import "DetailViewEditControllerViewController.h"
#import "KnowledgeItemMO.h"
#import "CollectiveCoreDataStack.h"
#import "DetailViewController.h"


@interface DetailViewEditControllerViewController ()

@end

@implementation DetailViewEditControllerViewController


/*
 Let's handle the detailItemObj and make sure we handle any odd changes.
 */

- (void)setDetailItemObj:(id)newDetailItemObj {
    if (_detailItemObj != newDetailItemObj) {
        _detailItemObj = newDetailItemObj;
        
        // Update the view.
        [self configureView];
    }
}




/*
 This fxn sets up the fields on the view with the items we pulled from the segue.
 */
- (void)configureView {
    // Update the user interface for the knowledge item so we can see it on screen.
    if (self.detailItemObj) {
        self.knowledgeDetailEditProblem.text = [[self.detailItemObj valueForKey:@"knowledgeItemProblemItem"]description];
        self.knowledgeDetailEditSolution.text = [[self.detailItemObj valueForKey:@"knowledgeItemSolutionItem"]description];
        self.knowledgeDetailEditTitle.text = [[self.detailItemObj valueForKey:@"knowledgeItemTitle"]description];
    }
    
}





- (void)viewDidLoad {
    
    if(self.detailItemObj != nil){
        [self configureView];
    }
    

    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)closeModalView{
    //[self dismissViewControllerAnimated:TRUE completion:Nil];
    [self dismissViewControllerAnimated:true completion:^{
        
        //Enter in actions to save the data here and update the view
    }];

}



- (void) updateKnowledgeEntry {
    
    //Call the default stack so we can use it so we can access and save to it.
    CollectiveCoreDataStack* coreDataStack = [CollectiveCoreDataStack defaultStack];
    

    
    //Perform a search to see if the item exists.
    NSFetchRequest* fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"KnowledgeItemEnt"];
    
    NSString *attributeID  = @"knowledgeItemTitle";
    NSPredicate *predMatch   = [NSPredicate predicateWithFormat:@"%K == %@",
                                attributeID, [[self.detailItemObj valueForKey:@"knowledgeItemTitle"]description]];
    [fetchRequest setFetchLimit:1];  //Let's limit it to 1 item.
    [fetchRequest setPredicate:predMatch]; //Let's setup the predicate for the where clause we added.
    
    
    
    NSError * error = nil;
    //Store the result in an array
    NSArray* searchResult = [coreDataStack.managedObjectContext executeFetchRequest:fetchRequest error:&error];
   
    
    
    if (searchResult !=nil){
     KnowledgeItemMO* item = [searchResult objectAtIndex:0];
        NSLog(@"TITLE FOR THE FOUND OBJECT IS: %@", item.knowledgeItemTitle);
        item.knowledgeItemTitle= self.knowledgeDetailEditTitle.text;
        item.knowledgeItemProblemItem = self.knowledgeDetailEditProblem.text;
        item.knowledgeItemSolutionItem = self.knowledgeDetailEditSolution.text;
    }
    else{
        NSLog(@"NOT FOUND");
    }
    
    
    
       //Finally save the changes
    [coreDataStack saveContext];

}


- (void) insertKnowledgeEntry{
    
    
    
    CollectiveCoreDataStack* coreDataStack= [CollectiveCoreDataStack defaultStack];
    KnowledgeItemMO* entry = [NSEntityDescription insertNewObjectForEntityForName:@"KnowledgeItemEnt" inManagedObjectContext:coreDataStack.managedObjectContext];
    
    //Capture the fields off of our new knowledge Item entry to save it.
    entry.knowledgeItemTitle = self.knowledgeDetailEditTitle.text;
    entry.knowledgeItemProblemItem = self.knowledgeDetailEditProblem.text;
    entry.knowledgeItemSolutionItem = self.knowledgeDetailEditSolution.text;
    entry.knowledgeItemitemDate = [[NSDate date]timeIntervalSince1970];
    
    
    //We finally save to the context.
    [coreDataStack saveContext];
    
    
}



- (IBAction)doneButtonPressed:(id)sender {
    
    
    if (self.detailItemObj != nil){
        [self updateKnowledgeEntry];
    }
    
    
    
    else{
        [self insertKnowledgeEntry];
    }
    
    [self closeModalView];
    
}
  

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
