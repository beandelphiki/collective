//
//  DetailViewController.h
//  Collective
//
//  Created by Orlando Medina on 1/6/16.
//  Copyright © 2016 Medina Labs LLC Orlando Medina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *knowledgeDetailTitle;
@property (weak, nonatomic) IBOutlet UITextView *knowledgeDetailProblem;
@property (weak, nonatomic) IBOutlet UITextView *knowledgeDetailSolution;
@property (weak, nonatomic) IBOutlet UILabel *knowledgeDetailTime;


@end

