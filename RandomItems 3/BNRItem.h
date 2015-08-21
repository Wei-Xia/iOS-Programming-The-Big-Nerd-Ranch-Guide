//
//  BNRItem.h
//  RandomItems 3
//
//  Created by Wei on 8/18/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
    
    BNRItem *_containedItem;
    __weak BNRItem *_container;
}

+ (instancetype) randomItem;

// Designated initializer for BNRItem
-(instancetype)initWithItemName:(NSString *)name
                 valueInDollars:(int)value
                   serialNumber:(NSString *)sNumber;

-(instancetype)initwithItemName:(NSString *)name;

-(void)setContainedItem: (BNRItem *)item;
-(BNRItem *)containedItem;

-(void)setContainer: (BNRItem *)item;
-(BNRItem *)container;

-(void)setItemName: (NSString *)str;
-(NSString *)itemName;

-(void)setSerialNumber: (NSString *)str;
-(NSString *)serialNumber;

-(void)setValueInDollars: (int)v;
-(int)valueInDollars;

-(NSDate *)dateCreated;


@end