//
//  main.m
//  RandomItems
//
//  Created by Wei on 8/14/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // Send the message addObject: to the NSMutableArray pointed to by the variable items, passing a string each time
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // Send another message, insertObject:atIndex:, to that same array object
        [items insertObject:@"Zero" atIndex:0];
        

//        // Iterating over an array
//        // For every item in the items array
//        for (NSString *item in items) {
//            // Log the description of item
//            NSLog(@"%@", items);
//        }
        
        for (int i = 0; i<[items count]; i++) {
            NSString *item = [items objectAtIndex:i];
            NSLog(@"%@",item);
        }
        
//        BNRItem *item = [[BNRItem alloc] init];
//        
//        // This creates an NSString, "Red Sofa" and gives it to the BNRItem
////        [item setItemName:@"Red Sofa"];
//        item.itemName = @"Red Sofa";
//        
//        // This creates an NSString, "A1B2C" and gives it to the BNRItem
////        [item setSerialNumber:@"A1B2C"];
//        item.serialNumber = @"A1B2C";
//        
//        // This sends the value 100 to be used as the valueInDollars of this BNRItem
////        [item setValueInDollars:100];
//        item.valueInDollars = 100;
        
        BNRItem *item = [[BNRItem alloc]initWithItemName:@"Red Sofa"
                                          valueInDollars:100
                                            serialNumber:@"A1B2C"];
        
//        NSLog(@"%@ %@ %@ %d",[item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]);
//        NSLog(@"%@, %@, %@, %d", item.itemName, item.dateCreated, item.serialNumber, item.valueInDollars);
        
        // The %@ token is replaced with the result of sending the description message to the corresponding argument
        NSLog(@"%@",item);
        
        BNRItem *itemWithName = [[BNRItem alloc] initWithItemName:@"Blue Sofa"
                                                   valueInDollars:200
                                                     serialNumber:@"xia"];
        NSLog(@"%@",itemWithName);
        
        BNRItem *itemWithNoname = [[BNRItem alloc] init];
        NSLog(@"%@", itemWithNoname);
        
        // Destory the mutable array object
        items = nil;
        
        
    }
    return 0;
}

