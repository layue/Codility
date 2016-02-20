//
//  main.m
//  PassingCars
//
//  Created by 徐冰 on 20/02/2016.
//  Copyright © 2016 Bing. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *A = [[NSMutableArray alloc] initWithArray:@[@0,@1,@0,@1,@1]];
        
        NSInteger sum = 0;
        NSInteger num = 0;
        for(NSInteger i = A.count - 1; i >= 0; i --) {
            if([A[i] integerValue] == 0)
                num += sum;
            else
                sum ++;
        }
        
        if(num > 1000000000)
            num = -1;
            
        NSLog(@"%ld", (long)num);
    }
    return 0;
}
