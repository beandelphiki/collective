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



@interface DetailViewEditControllerViewController ()

@end

@implementation DetailViewEditControllerViewController

- (void)viewDidLoad {
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




/*
 @TODO: Rewrite the functionality of this to open up my seague and create a new item.
 */

- (void) updateDiaryEntry {
    //Capture all of the entries from the GUI and grab the values with the exception of the date field. We update that every time.
    self.entry.knowledgeItemTitle = self.knowledgeDetailEditTitle.text;
    self.entry.knowledgeItemProblemItem = self.knowledgeDetailEditProblem.text;
    self.entry.knowledgeItemSolutionItem = self.knowledgeDetailEditSolution.text;
    self.entry.knowledgeItemitemDate = [[NSDate date]timeIntervalSince1970];
    
    
    //Call the default stack so we can use it and save to it.
    CollectiveCoreDataStack* coreDataStack = [CollectiveCoreDataStack defaultStack];
    
    //Finally save to it.
    [coreDataStack saveContext];

}


- (void) insertDiaryEntry{
    
    
    
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
    if (self.entry != nil){
        [self updateDiaryEntry];
    }
    
    else{
        [self insertDiaryEntry];
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
