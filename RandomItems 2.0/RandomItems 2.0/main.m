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
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i=0; i<10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        id lastObj = [items lastObject];
        
//        // lastObj is an instance of BNRItem and will not understand the count message
//        [lastObj count];
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        items = nil;
        
    }
    return 0;
}
