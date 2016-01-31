//
//  main.m
//  BinaryGap
//
//  Created by 徐冰 on 31/01/2016.
//  Copyright © 2016 Bing. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int N = 561892;
        
        if (N <= 3) {
            NSLog(@"0");
        } else {
            int num = N;
            int max = 0;
            int gap = 0;
            int b = 0;
            int count = N % 2;
            while (num != 0) {

                b = num % 2;
                if (b == 0) {
                    if (count == 1) {
                        gap ++;
                    }
                } else {
                    if (gap > max) {
                        max = gap;
                    }
                    gap = 0;
                    count = 1;
                }
                num /= 2;
            }
            NSLog(@"%d", max);
        }
    }
    return 0;
}
