//
//  main.m
//  RandomItems 3
//
//  Created by Wei on 8/18/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        BNRItem *backpack = [[BNRItem alloc] initwithItemName:@"Backpack"];
        [items addObject:backpack];
        
        BNRItem *calculator = [[BNRItem alloc] initwithItemName:@"Calculator"];
        [items addObject:calculator];
        
        backpack.containedItem = calculator;
        
        backpack = nil;
        calculator = nil;
        
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        NSLog(@"Setting item to nil...");
        
        items = nil;
        
    }
    return 0;
}
