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
        [A addObjectsFromArray:@[@2, @3, @4, @1]];
        
        NSInteger sumN = (1 + [A count]) * [A count] / 2;
        NSInteger sumA = 0;
        NSInteger missing = 0;
        for (int i = 0; i < [A count]; i ++) {
            sumA += [A[i] integerValue];
        }
        
        missing = sumN + [A count] + 1 - sumA;
        
        NSLog(@"%ld", missing);
    }
    return 0;
}
