//
//  BNRItem.h
//  RandomItems 2.0
//
//  Created by Wei on 8/17/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

+ (instancetype) randonItem;

// Designated initializer for BNRItem
-(instancetype)initWithItemName:(NSString *)name
                 valueInDollars:(int)value
                   serialNumber:(NSString *)sNumber;

-(instancetype)initwithItemName:(NSString *)name;


-(void)setItemName: (NSString *)str;
-(NSString *)itemName;

-(void)setSerialNumber: (NSString *)str;
-(NSString *)serialNumber;

-(void)setValueInDollars: (int)v;
-(int)valueInDollars;

-(NSDate *)dateCreated;


@end