//
//  BNRItem.m
//  RandomItems 2.0
//
//  Created by Wei on 8/17/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+ (instancetype)randonItem
{
    // Create an immutable array of three adjectives
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    
    // Create an immutable array of three nouns
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    
    // Get the index of a random adjective/noun from the lists
    // Note: the % operator, called the modulo operator, gives you the remainder.
    // So adjectiveIndex is a random number from 0 to 2 inclusive.
    // Note that NSInteger is not an object, but a type definition for "Long"
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];

    
    
}

- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber
{
    // Call the superclass's desinated initializer
    self = [super init];
    
    // Did the superclass's designated initializer succeed?
    if (self) {
        // Give the instance variables initial values
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        
        // Set _dateCreated to the current date and time
        _dateCreated = [[NSDate alloc] init];
    }
    
    // Return the address of the newly initialized object
    return self;
}

- (instancetype)init
{
    return [self initWithItemName:@"Item"];
}

- (instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:@""];
}

- (void)setItemName:(NSString *)str
{
    _itemName = str;
}

- (NSString *)itemName
{
    return _itemName;
}

- (void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
}

- (NSString *)serialNumber
{
    return _serialNumber;
}

- (void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}

- (int)valueInDollars
{
    return _valueInDollars;
}

-(NSDate *)dateCreated
{
    return _dateCreated;
}

-(NSString *)description
{
    NSString *descriptionString =
    [[NSString alloc]initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
     self.itemName,
     self.serialNumber,
     self.valueInDollars,
     self.dateCreated];
    
    return descriptionString;
}

@end