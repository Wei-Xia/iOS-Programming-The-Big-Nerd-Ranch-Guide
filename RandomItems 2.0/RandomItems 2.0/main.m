//
//  main.m
//  RandomItems 2.0
//
//  Created by Wei on 8/17/15.
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
        
        
        
        for (int i = 0; i<[items count]; i++) {
            NSString *item = [items objectAtIndex:i];
            NSLog(@"%@",item);
        }
        
        
        BNRItem *item = [[BNRItem alloc]initWithItemName:@"Red Sofa"
                                          valueInDollars:100
                                            serialNumber:@"A1B2C"];

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
