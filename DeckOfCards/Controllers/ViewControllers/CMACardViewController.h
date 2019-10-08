//
//  CMACardViewController.h
//  DeckOfCards
//
//  Created by Christopher Alegre on 10/7/19.
//  Copyright © 2019 Christopher Alegre. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CMACardViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *suitLabel;
@property (weak, nonatomic) IBOutlet UIImageView *cardImage;


- (IBAction)drawCardButtonTapped:(UIButton *)sender;



@end
