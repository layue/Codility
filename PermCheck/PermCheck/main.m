//
//  main.m
//  PermCheck
//
//  Created by 徐冰 on 11/02/2016.
//  Copyright © 2016 Bing. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *A = [[NSMutableArray alloc] init];
        [A addObjectsFromArray:@[@2]];
        
        int check = 0;
        int k = 1;
        
        for (id i in A)
        {
            check ^= (int)[i integerValue] ^ k;
            k ++;
            
        }
        
        check = check? 0 : 1;
        NSLog(@"%d",check);
    }
    return 0;
}
