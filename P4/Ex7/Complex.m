//
//  Complex.m
//  Ex7
//
//  Created by Thanh Pham on 10/30/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import "Complex.h"

@implementation Complex

- (void) setReal:(double)x{
    a=x;
}

-(void) setImaginary:(double)x {
    b=x;
}

-(double) getImaginary{
    return b;
}

-(double) getReal {
    return a;
}

-(void) print {
    printf("%1.1fi",a);
    if(b!=0){
        b>0?printf(" + %1.1f",b):printf(" %1.1f",b);
    }
    printf("\n");
}

- (void) add:(Complex *)x{
    a+=[x getReal];
    b+=[x getImaginary];
}

- (void) sub:(Complex*)x {
    a-=[x getReal];
    b-=[x getImaginary];
}

-(void) mul:(Complex *)x{
    double a2 = [x getReal];
    double b2 = [x getImaginary];
    a = a*a2 -b*b2;
    b = a*b2 - a2*b;
}

-(void) div:(Complex *)x{
    double a2 = [x getReal];
    double b2 = [x getImaginary];
    double bp = a2*a2 + b2*b2;
    
    a = (a*a2 + b*b2)/bp;
    b = (b*a2 - b2*a)/bp;
}

@end
