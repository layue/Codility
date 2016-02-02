//
//  main.m
//  CyclicRotation
//
//  Created by 徐冰 on 02/02/2016.
//  Copyright © 2016 Bing. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *A = [[NSMutableArray alloc] initWithObjects:@3, @8, @9, @7, @6 ,nil];
        int k = 3;
        
        NSMutableArray *B = [[NSMutableArray alloc] initWithArray:A copyItems:true];
        
        for(int i = 0; i < [A count]; i ++)
        {
            B[(i + k) % [A count]] = A[i];
        }
        
        NSLog(@"%@",A);
        NSLog(@"%@",B);
    }
    return 0;
}
