//
//  BNRItem.h
//  RandomItems 3
//
//  Created by Wei on 8/18/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

@property BNRItem *containedItem;
@property BNRItem *container;

@property NSString *itemName;
@property NSString *serialNumber;
@property int valueInDollars;
@property NSDate *dateCreated;


+ (instancetype) randomItem;

-(instancetype)initWithItemName:(NSString *)name
                 valueInDollars:(int)value
                   serialNumber:(NSString *)sNumber;

-(instancetype)initwithItemName:(NSString *)name;

@end