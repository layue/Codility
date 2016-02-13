//
//  main.m
//  MissingInteger
//
//  Created by 徐冰 on 13/02/2016.
//  Copyright © 2016 Bing. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *A = [[NSMutableArray alloc] initWithArray:@[@1, @3, @6, @4, @1, @2]];
        NSMutableSet *s = [[NSMutableSet alloc] init];
        
        for (id i in A) {
            if ([i integerValue] > 0 && ![s containsObject:i]) {
                [s addObject:i];
            }
        }
        int i;
        for (i = 1; i <= s.count; i ++) {
            NSNumber *k = [[NSNumber alloc] initWithInt:i];
            if (![s containsObject:k]) {
//                return i;
                NSLog(@"%d", i);
            }
        }
        
        NSLog(@"%d", i);
    }
    return 0;
}
