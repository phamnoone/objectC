//
//  main.m
//  P8
//
//  Created by Thanh Pham on 11/4/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Rectangle *rec =  [[Rectangle alloc ]init ];
        [rec setWith: 100];
        [rec setHeigt: 50 ];
        [rec print];
    
        }
    return 0;
}
