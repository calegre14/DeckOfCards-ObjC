//
//  CMACardController.h
//  DeckOfCards
//
//  Created by Christopher Alegre on 10/7/19.
//  Copyright © 2019 Christopher Alegre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CMACard.h"

@interface CMACardController : NSObject

+ (CMACardController *)sharedController;

- (void)drawNewCard:(NSInteger)numberOfCards completion:(void (^) (NSArray <CMACard *> *))completion;
- (void)fetchImageFromCard:(CMACard *)card completion:(void (^) (UIImage *))completion;

@end

