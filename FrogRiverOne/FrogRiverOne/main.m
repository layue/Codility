//
//  main.m
//  FrogRiverOne
//
//  Created by 徐冰 on 11/02/2016.
//  Copyright © 2016 Bing. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *A = [[NSMutableArray alloc] initWithArray:@[@1,@3, @5, @4, @2, @3, @5, @4]];
//        NSMutableArray *A = [[NSMutableArray alloc] initWithArray:@[@2,@2, @2, @2]];
        int X = 5;
        NSMutableSet *s = [[NSMutableSet alloc] init];

        for(int i = 0; i < A.count; i ++)
        {
            if (![s containsObject:A[i]]) {
                [s addObject:A[i]];
                if (s.count == X) {
                    NSLog(@"%d", i);
//                    return i;
                }
            }
        }

        NSLog(@"%d", -1);
//        return -1;
    }
    return 0;
}
