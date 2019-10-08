//
//  CMACard.h
//  DeckOfCards
//
//  Created by Christopher Alegre on 10/7/19.
//  Copyright © 2019 Christopher Alegre. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CMACard : NSObject

@property (nonatomic, copy, readonly) NSString * suit;
@property (nonatomic, copy, readonly) NSString * image;

// - is a func, + is a static func
//initWithCardSuit & image is external name - what we see when we call func
//The suit & image after the NSString is the internal name - the name of the prop
- (instancetype)initWithCardSuit:(NSString *)suit
                           image:(NSString *)image;

@end

@interface CMACard (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary<NSString *, id> *)dictionary;

@end

NS_ASSUME_NONNULL_END
