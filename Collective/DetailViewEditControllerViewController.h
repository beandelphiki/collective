//
//  DetailViewEditControllerViewController.h
//  Collective
//
//  Created by Orlando Medina on 1/6/16.
//  PLEASE SEE ATTACHED MIT LICENSE..
//

#import <UIKit/UIKit.h>
@class KnowledgeItemMO;
@class DetailViewController;


@interface DetailViewEditControllerViewController : UIViewController

@property (strong, nonatomic) id detailItemObj;



/*
 doneButton: This is wired up to the GUI so we can detect what to do with the button.
 knowledgeDetailEditTitle: This is the wired up Title.
 knowledgeDetailEditProblem: This is the wired up Problem text view area
 knowledgeDetailEditSolution: This is the wired up Solution text view area
 
 */
@property (weak, nonatomic) IBOutlet UIButton *doneButton;
@property (weak, nonatomic) IBOutlet UITextField *knowledgeDetailEditTitle;
@property (weak, nonatomic) IBOutlet UITextView *knowledgeDetailEditProblem;
@property (weak, nonatomic) IBOutlet UITextView *knowledgeDetailEditSolution;





@end
