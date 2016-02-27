//
//  main.m
//  MinAvgTwoSlice
//
//  Created by 徐冰 on 27/02/2016.
//  Copyright © 2016 Bing. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *A = [[NSMutableArray alloc] initWithArray:@[@4, @2, @2, @5, @1, @5, @8]];
        int sum[A.count + 1];
//      Hint.
//        https://codesays.com/2014/solution-to-min-avg-two-slice-by-codility/
        sum[0] = 0;
        for (int i = 1; i < A.count + 1; i ++) {
            sum[i] = sum[i - 1] + [A[i - 1] intValue];
        }
        for (int i = 0; i < A.count + 1; i ++) {
            NSLog(@"%d", sum[i]);
        }
        
        double temp = sum[2] / 2.0;
        int from = -1;
        for (int i = 0; i < A.count - 1; i ++) {
            if ((sum[i + 2] - sum[i]) / 2.0 < temp) {
                from = i;
                temp = (sum[i + 2] - sum[i]) / 2.0;
            }
            if ((i < A.count - 2) && (sum[i + 3] - sum[i]) / 3.0 < temp) {
                from = i;
                temp = (sum[i + 3] - sum[i]) / 3.0;
            }
        }
        
        NSLog(@"%d", from);
        
    }
    return 0;
}
