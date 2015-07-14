//
//  ViewController.m
//  Mafia
//
//  Created by Auston Salvana on 7/13/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"
#import "GameViewController.h"

@interface ViewController ()
@property (nonatomic) Player *mafioso;
@property (nonatomic) Player *sheriff;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mafioso = [[Player alloc]init];
    self.mafioso.points = 0;
    
    self.sheriff = [[Player alloc]init];
    self.sheriff.points = 0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    GameViewController *gameVC = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"Mafioso"]) {
        self.mafioso.path = @"Mafioso";
        gameVC.playerType = self.mafioso;
    }
    else {
        self.sheriff.path = @"Sheriff";
        gameVC.playerType = self.sheriff;
    }
}

@end
