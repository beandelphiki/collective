//
//  DetailViewController.h
//  Collective
//
//  Created by Orlando Medina on 1/6/16.
//  PLEASE SEE ATTACHED MIT LICENSE..
//

#import <UIKit/UIKit.h>
#import "KnowledgeItemMO.h"
#import "DetailViewEditControllerViewController.h"


@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *knowledgeDetailTitle;
@property (weak, nonatomic) IBOutlet UITextView *knowledgeDetailProblem;
@property (weak, nonatomic) IBOutlet UITextView *knowledgeDetailSolution;
@property (weak, nonatomic) IBOutlet UILabel *knowledgeDetailTime;

/*-----
 Bringing in a KnowledgeItem Entry so we can start adding data to our context and persisting it.
 ------*/
@property (strong,nonatomic)DetailViewEditControllerViewController *editView;


@end

