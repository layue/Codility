//
//  main.m
//  PermMissingElem
//
//  Created by 徐冰 on 03/12/2015.
//  Copyright © 2015 Bing. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *A = [[NSMutableArray alloc] init];
        [A addObjectsFromArray:@[@2, @3, @1, @5]];
        NSInteger N = 4;
        
        for (int i = 0; i < [A count]; i ++) {
            if ([A[i] integerValue] <= N) {
                if ([A[i] integerValue] != i+1)
                {
                    NSNumber *temp = 0;
                    NSNumber *swap1 = A[i];
                    NSNumber *swap2 = A[[swap1 intValue] - 1];
                    temp = swap1;
                    swap1 = swap2;
                    swap2 = temp;
                    [A replaceObjectAtIndex:i withObject:swap1];
                    [A replaceObjectAtIndex:[swap2 intValue] - 1 withObject:swap2];
                }
            }
        }
        
        for (int i = 0; i < [A count] - 1; i ++) {
            if ([A[i] integerValue] > [A[i + 1] integerValue]) {
                NSLog(@"%d", i+1);
            }
        }
        NSLog(@"%ld", N);
    }
    return 0;
}
