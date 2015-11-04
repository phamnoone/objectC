//
//  ConverNumber.m
//  P6
//
//  Created by Thanh Pham on 11/4/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import "ConverNumber.h"

@implementation ConverNumber

@synthesize number;

-(void)getNum {
    printf("Nhap so : ");
    scanf("%d",&number);
}

-(void) convert{
    int n =number,i =0;
    for(;;i++){
        n= n/10;
        if(n==0){
            n = i;
            break;
        }
    }
    int temp = pow(10,n);
    n=number;
    for(;;){
        i = (n/temp);
        switch (i) {
            case 1:
                printf("mot ");
                break;
            case 2:
                printf("hai ");
                break;
            case 3:
                printf("ba ");
                break;
            case 4:
                printf("bon ");
                break;
            case 5:
                printf("nam ");
                break;
            case 6:
                printf("sau ");
                break;
            case 7:
                printf("bay ");
                break;
            case 8:
                printf("tam ");
                break;
            case 9:
                printf("chin ");
                break;
            default:
                break;
        }
        n-=(i*temp);
        temp/=10;
        
        if(n== 0)
            break;
    }
}

@end
