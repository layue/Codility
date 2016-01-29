//
//  main.m
//  TapeEquilibrium
//
//  Created by 徐冰 on 29/11/2015.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *A = @[@10, @100, @1000];
        NSInteger leftResult = [A[0] integerValue];
        NSInteger rightResult = 0;
        for (id number in A) {
            rightResult += [number integerValue];
        }
        rightResult -= [A[0] integerValue];
        NSInteger min = labs(rightResult - leftResult);
        if ([A count] == 2) {
            NSLog(@"%ld", min);
        }
        else
        {
            for (int i = 1; i < [A count]; i ++) {
                leftResult += [A[i] integerValue];
                rightResult -= [A[i] integerValue];

                if (min > labs(rightResult - leftResult)) {
                    min = labs(rightResult - leftResult);
                }
            }
            NSLog(@"%ld", min);
        }
    }
    return 0;
}
