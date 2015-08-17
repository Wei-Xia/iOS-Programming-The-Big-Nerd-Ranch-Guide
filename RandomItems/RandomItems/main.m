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
        
        BNRItem *item = [[BNRItem alloc] init];
        NSLog(@"%@ %@ %@ %d",[item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]);
        
        // Destory the mutable array object
        items = nil;
        
        
    }
    return 0;
}

