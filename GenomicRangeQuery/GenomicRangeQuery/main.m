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

//        Because Codility does not support containString, this method does not work
//        for (int i = 0; i < P.count; i ++) {
//            NSRange range = NSMakeRange([P[i] unsignedIntegerValue], [Q[i] unsignedIntegerValue]- [P[i] unsignedIntegerValue]);
//            NSString *sub = [S substringWithRange:range];
//            if([sub containsString:@"A"] == YES)
//                result[i] = @1;
//            else if([sub containsString:@"C"])
//                result[i] = @2;
//            else if ([sub containsString:@"G"])
//                result[i] = @3;
//            else
//                result[i] = @4;
//        }

        int temp[4][S.length + 1];
        
        for (int i = 0; i < S.length; i ++) {
            int A = 0;
            int C = 0;
            int G = 0;
            int T = 0;
            if ([[S substringWithRange:NSMakeRange(i, 1)]  isEqual: @"A"]) {
                A = 1;
            } else if([[S substringWithRange:NSMakeRange(i, 1)]  isEqual: @"C"]) {
                C = 1;
            } else if([[S substringWithRange:NSMakeRange(i, 1)]  isEqual: @"G"]) {
                G = 1;
            } else if([[S substringWithRange:NSMakeRange(i, 1)]  isEqual: @"T"]){
                T = 1;
            }
            temp[0][i + 1] = temp[0][i] + A;
            temp[1][i + 1] = temp[1][i] + C;
            temp[2][i + 1] = temp[2][i] + G;
            temp[3][i + 1] = temp[3][i] + T;
        }
        
        for (int i = 0; i < P.count; i ++) {
            int pPos = [P[i] intValue];
            int qPos = [Q[i] intValue] + 1;
            
            if ((temp[0][qPos] - temp[0][pPos]) > 0) {
                [result addObject:@1];
            } else if ((temp[1][qPos] - temp[1][pPos]) > 0) {
                [result addObject:@2];
            } else if ((temp[2][qPos] - temp[2][pPos]) > 0) {
                [result addObject:@3];
            } else {
                [result addObject:@4];
            }
        }
        NSLog(@"%@", result);
    }
    return 0;
}
