//
//  EndViewController.m
//  Mafia
//
//  Created by Auston Salvana on 7/13/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "EndViewController.h"

@interface EndViewController ()

@end

@implementation EndViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([self.playerEnd.path isEqualToString:@"Mafioso"]) {
        self.endImage.image = [UIImage imageNamed:@"Fatality"];
        self.endLabel.text = @"Finish Him!!!";
    }
    else {
        self.endImage.image = [UIImage imageNamed:@"Saved"];
        self.endLabel.text = @"You Saved ME!!";
    }
}

- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
