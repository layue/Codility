//
//  main.m
//  OddOccurrencesInArray
//
//  Created by 徐冰 on 04/02/2016.
//  Copyright © 2016 Bing. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *A = @[@9, @3, @9, @3, @9, @7, @9];
        
        int B = 0;
        
        for (id i in A) {
            B ^= [i intValue];
        }
        
        NSLog(@"%d", B);
    }
    return 0;
}
