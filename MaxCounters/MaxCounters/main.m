//
//  main.m
//  MaxCounters
//
//  Created by 徐冰 on 13/02/2016.
//  Copyright © 2016 Bing. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *A = [[NSMutableArray alloc] initWithArray:@[@3, @4, @4, @6, @1, @4, @4]];
        int N = 5;
        NSMutableArray *result = [[NSMutableArray alloc] initWithCapacity:N];

        for (int i = 0; i < N; i ++) {
            [result addObject:@0];
        }
        
        int max = 0;
        int temp = 0;
        for (id i in A) {
            int m = [i intValue] - 1;
            if(m >= 0 && m <= N-1) {
                if ([result[m] intValue] <= max) {
                    [result replaceObjectAtIndex:m withObject:[[NSNumber alloc] initWithInt:max+1]];
                }
                else {
                    [result replaceObjectAtIndex:m
                                      withObject:[[NSNumber alloc] initWithInt:[result[m] intValue] + 1]];
                }
                if ([result[m] intValue] > temp) {
                    temp = [result[m] intValue];
                }
            }
            else
                max = temp;
        }
        
        for (int i = 0; i < result.count; i ++) {
            if ([result[i] intValue] < max) {
                [result replaceObjectAtIndex:i withObject:[[NSNumber alloc] initWithInt: max]];
            }
        }
        
        NSLog(@"%@", result);
    }
    return 0;
}
