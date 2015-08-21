//
//  BNRItem.h
//  RandomItems 3
//
//  Created by Wei on 8/18/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

+ (instancetype) randomItem;

-(instancetype)initWithItemName:(NSString *)name
                 valueInDollars:(int)value
                   serialNumber:(NSString *)sNumber;

-(instancetype)initwithItemName:(NSString *)name;

@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly,strong) NSDate *dateCreated;


@end