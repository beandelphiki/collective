//
//  DetailViewController.m
//  Collective
//
//  Created by Orlando Medina on 1/6/16.
//  PLEASE SEE ATTACHED MIT LICENSE..
//

#import "DetailViewController.h"
#import "KnowledgeItemMO.h"
#import "CollectiveCoreDataStack.h"




@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}




- (void)configureView {
    // Update the user interface for the knowledge item so we can see it on screen.
    if (self.detailItem) {
        self.knowledgeDetailProblem.text = [[self.detailItem valueForKey:@"knowledgeItemProblemItem"]description];
        self.knowledgeDetailSolution.text = [[self.detailItem valueForKey:@"knowledgeItemSolutionItem"]description];
        self.knowledgeDetailTitle.text = [[self.detailItem valueForKey:@"knowledgeItemTitle"]description];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showKnowledgeDetail"]) {

    //I used an <id> object in order to make sure that the knowledgeItem was getting passed. There was some odd issues with assuring the knowledgeItem object made it over itself.
        DetailViewEditControllerViewController *editController = (DetailViewEditControllerViewController *)segue.destinationViewController;
        
        [editController setDetailItemObj:self.detailItem];

    }
}





@end
