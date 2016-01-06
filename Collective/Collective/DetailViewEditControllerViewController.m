//
//  DetailViewEditControllerViewController.m
//  Collective
//
//  Created by Orlando Medina on 1/6/16.
//  Copyright © 2016 Medina Labs LLC Orlando Medina. All rights reserved.
//

#import "DetailViewEditControllerViewController.h"

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

- (IBAction)onButtonPress:(id)sender {
    //[self dismissViewControllerAnimated:TRUE completion:Nil];
        [self dismissViewControllerAnimated:true completion:^{
            
           //Enter in actions to save the data here and update the view
        }];
    
    
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
