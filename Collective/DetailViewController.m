//
//  DetailViewController.m
//  Collective
//
//  Created by Orlando Medina on 1/6/16.
//  Copyright © 2016 Medina Labs LLC Orlando Medina. All rights reserved.
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
    // Update the user interface for the detail item.
    if (self.detailItem) {
        //self.knowledgeDetailTime.text = [[self.detailItem valueForKey:@"knowledgeItemTitle"] description];
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


@end
