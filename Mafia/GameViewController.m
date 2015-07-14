//
//  MafiosoGameViewController.m
//  Mafia
//
//  Created by Auston Salvana on 7/13/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "GameViewController.h"
#import "EndViewController.h"

@interface GameViewController ()

@property (nonatomic) NSTimer*timer;
@property (assign) float playerProgress;

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.playerProgress = 0.5f;
    self.playerPointLabel.text = [NSString stringWithFormat:@"%@ points: %d",self.playerType.path, self.playerType.points];
    
}

#pragma mark - helper methods

-(void)decrementTime {
    if (self.playerProgress <= 0) {
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
    else {
        self.playerProgress-= 0.005f;
        self.progressBar.progress = self.playerProgress;
    }
}
- (IBAction)clickButton:(id)sender {
    if (!self.timer) {
        self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(decrementTime) userInfo:nil repeats:YES];
        [self.timer fire];
    }
    
    if (self.playerProgress >= 1) {
        if (self.playerType.points == 5) {
            self.playerType.points = 0;
            NSLog(@"You Won!!");
            [self.navigationController popToRootViewControllerAnimated:YES];
        }
        else {
            EndViewController *endGame = [self.storyboard instantiateViewControllerWithIdentifier:@"EndViewController"];
            
            self.playerType.points += 1;
            endGame.playerEnd = self.playerType;
            [self presentViewController:endGame animated:YES completion:nil];
        }
    }
    else {
        self.playerProgress += 0.1f;
        self.progressBar.progress = self.playerProgress;
    }
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.playerPointLabel.text = [NSString stringWithFormat:@"%@ points: %d",self.playerType.path, self.playerType.points];
}

@end
