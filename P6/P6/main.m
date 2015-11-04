//
//  main.m
//  P6
//
//  Created by Thanh Pham on 11/4/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cal.h"
#include "ConverNumber.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // EX1
        /*int num1,num2;
        printf("Nhap so thu nhat : ");
        scanf("%d",&num1);
        printf("Nhap so thu hai  : ");
        scanf("%d",&num2);
        
        if(num1%num2 == 0)
            printf("So thu nhat chia het cho so thu 2\n");
        else
            printf("So thu nhat khong chia het cho so thu 2\n");*/
        // EX2
         // cal *c = [[cal alloc ]init];
         //[c run];
        
        //EX6
        
        ConverNumber *converNumber = [[ConverNumber alloc]init];
        [converNumber getNum];
        [converNumber convert];
        
        
        
    }
    return 0;
}
