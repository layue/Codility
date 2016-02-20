//
//  main.m
//  GenomicRangeQuery
//
//  Created by 徐冰 on 20/02/2016.
//  Copyright © 2016 Bing. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *S = @"CAGCCTA";
        NSMutableArray *P = [[NSMutableArray alloc] initWithObjects:@2, @5, @0, nil];
        NSMutableArray *Q = [[NSMutableArray alloc] initWithObjects:@4, @5, @6, nil];
        NSMutableArray *result = [[NSMutableArray alloc] initWithCapacity:P.count];
        
        for (int i = 0; i < P.count; i ++) {
            NSRange range = NSMakeRange([P[i] unsignedIntegerValue], [Q[i] unsignedIntegerValue]- [P[i] unsignedIntegerValue]);
            NSString *sub = [S substringWithRange:range];
            if([sub containsString:@"A"])
                result[i] = @1;
            else if([sub containsString:@"C"])
                result[i] = @2;
            else if ([sub containsString:@"G"])
                result[i] = @3;
            else
                result[i] = @4;
        }
        NSLog(@"%@", result);
    }
    return 0;
}
