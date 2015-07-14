//
//  MafiosoGameViewController.h
//  Mafia
//
//  Created by Auston Salvana on 7/13/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"

@interface GameViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIProgressView *progressBar;
- (IBAction)clickButton:(id)sender;
@property (nonatomic) Player *playerType;
@property (weak, nonatomic) IBOutlet UILabel *playerPointLabel;

@end
