//
//  CMACard.m
//  DeckOfCards
//
//  Created by Christopher Alegre on 10/7/19.
//  Copyright © 2019 Christopher Alegre. All rights reserved.
//

#import "CMACard.h"

@implementation CMACard
//Creating a instance type function, we start by defining what we want returned, external parameter name / function name, followed by the type declaration and the pointer in memory, this is followed by our internal name for each parameter and then open the scope
- (instancetype)initWithCardSuit:(NSString *)suit image:(NSString *)image
{
    // Almost everything in obj C is a class so when creating a class it must be a subclass of the NSObkect, so we must init the super class first
    self = [super init];
    // Check if self exists, then init with our properties
    if (self)
    {
        //self.suit = suit
        _suit = suit;
        //self.image = image
        _image = image;
    }
    return self;
}

@end

//Create and extention on our card
@implementation CMACard (JSONConvertable)

// 1. "-" instance function
//2. "()" - What the return is
//3. "theWordsThatGoHere:" - ExternalName for out first parameter
//4. "(NSDictionary<>)" - type Declaration
//5. "<...*, ...>" - Defines the type of Key and Value of the dictonary
//6. "*" - Our pointer in memory
//7. "dictionary" - 
- (CMACard *)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSString * suit = dictionary[@"suit"];
    NSString * image = dictionary[@"image"];
    
    return [self initWithCardSuit:suit image:image];
}

@end
