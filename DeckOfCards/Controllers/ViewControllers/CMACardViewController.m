//
//  CMACardViewController.m
//  DeckOfCards
//
//  Created by Christopher Alegre on 10/7/19.
//  Copyright © 2019 Christopher Alegre. All rights reserved.
//

#import "CMACardViewController.h"
#import "CMACardController.h"
#import "CMACard.h"

@interface CMACardViewController ()

@end

@implementation CMACardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)drawCardButtonTapped:(UIButton *)sender {
    [CMACardController.sharedController drawNewCard:1 completion:^(NSArray<CMACard *> *cardArray) {
        [CMACardController.sharedController fetchImageFromCard:cardArray[0] completion:^(UIImage * image) {
            dispatch_async(dispatch_get_main_queue(), ^{
                self.cardImage.image = image;
                CMACard * card = cardArray[0];
                self.suitLabel.text = card.suit;
            });
        }];
    }];
}
@end
