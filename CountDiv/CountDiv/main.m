//
//  main.m
//  CountDiv
//
//  Created by 徐冰 on 17/02/2016.
//  Copyright © 2016 Bing. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int A = 6;
        int B = 11;
        int K = 3;
        int N = 0;
        
        if (A % K == 0) {
            N = (B - A) / K + 1;
        } else {
            int first = A + (K - A % K);
            if (first > B)
                return 0;
            N = (B - first) / K + 1;
        }
        NSLog(@"%d", N);
    }
    return 0;
}
