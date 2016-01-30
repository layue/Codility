//
//  main.m
//  FrogJmp
//
//  Created by 徐冰 on 30/01/2016.
//  Copyright © 2016 Bing. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int x = 10;
        int y = 50;
        int d = 30;
        int t = 0;
        
        if ((y - x) % d == 0) {
            t = (y - x) / d;
        } else {
            t = (y - x) / d + 1;
        }
        NSLog(@"%d", t);
    }
    return 0;
}
