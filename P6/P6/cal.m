//
//  cal.m
//  P6
//
//  Created by Thanh Pham on 11/4/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import "cal.h"
#import "State.h"
@implementation cal


-(void) run{
    
    double num;
    char i;
    State *state =[[State alloc]init];
    printf("Calcutator stated :D \n");
    for(;;){
        scanf("%lf %c",&num,&i);
        switch (i) {
            case 'S':
                [state start: num];
                break;
            case 'E':
                [state exit];
                break;
            case '+':
                [state sum:num];
                break;
            case '-':
                [state sub:num];
                break;
            case '*':
                [state mul:num];
                break;
            case '/':
                [state div: num];
                break;
            default:
                printf("ERROR! EXIT \n");
                break;
        }
    }
}

@end
