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
        
        for (int i=0; i<10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
//        NSLog(@"Setting item to nil...");
        
        items = nil;
        
    }
    return 0;
}
