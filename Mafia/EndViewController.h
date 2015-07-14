//
//  EndViewController.h
//  Mafia
//
//  Created by Auston Salvana on 7/13/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"

@interface EndViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *endLabel;
@property (weak, nonatomic) IBOutlet UIImageView *endImage;
@property (nonatomic) Player *playerEnd;

@end
