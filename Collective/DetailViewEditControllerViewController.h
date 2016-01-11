//
//  DetailViewEditControllerViewController.h
//  Collective
//
//  Created by Orlando Medina on 1/6/16.
//  Copyright © 2016 Medina Labs LLC Orlando Medina. All rights reserved.
//

#import <UIKit/UIKit.h>
@class KnowledgeItemMO;



@interface DetailViewEditControllerViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *doneButton;
@property (weak, nonatomic) IBOutlet UITextField *knowledgeDetailEditTitle;
@property (weak, nonatomic) IBOutlet UITextView *knowledgeDetailEditProblem;
@property (weak, nonatomic) IBOutlet UITextView *knowledgeDetailEditSolution;


#pragma  mark Add in the reference to the CoreData item here so we can start adding information to it.
/*-----
Bringing in a KnowledgeItem Entry so we can start adding data to our context and persisting it.
------*/

@property (nonatomic,strong)KnowledgeItemMO* entry;



@end
