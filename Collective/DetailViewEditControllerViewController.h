//
//  DetailViewEditControllerViewController.h
//  Collective
//
//  Created by Orlando Medina on 1/6/16.
//  Copyright © 2016 Medina Labs LLC Orlando Medina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewEditControllerViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *doneButton;
@property (weak, nonatomic) IBOutlet UITextField *knowledgeDetailEditTitle;
@property (weak, nonatomic) IBOutlet UITextView *knowledgeDetailEditProblem;
@property (weak, nonatomic) IBOutlet UITextView *knowledgeDetailEditSolution;

@end
