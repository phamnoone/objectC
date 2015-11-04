//
//  main.m
//  Ex7
//
//  Created by Thanh Pham on 10/30/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "oxy.h"
#import "Complex.h"
#import "Rectangle.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        oxy *aPoint = [[oxy alloc] init];
        
        [aPoint setXY:1 :1];
        printf("X : %d- y : %d\n",[aPoint getX], [aPoint getY]);
        // convert C* to F*
        int f;
        f = 27;
        float c =(float)(f-32)/1.8;
        printf("%d F to %3.3f C\n",f,c);
        NSLog(@"ex 4.4");
        float x = 2.55;
        float reasutl = 3*x*x*x -5*x*x +6;
        printf("x = %3.3f : 3x^3 - 5x^2 + 6 = %3.3f\n",x,reasutl);
        printf("\n");
        
        // ex6.4
        NSLog(@"ex 6.4");
        Complex *so = [[Complex alloc ] init];
    
        [so setReal: 1];
        [so setImaginary: 2];
        [so print];
        printf("\n");
        
        NSLog(@"ex 6.4");
        
        Rectangle *hcn =[[Rectangle alloc]init];
        [hcn setHeigt:100];
        [hcn setWith:150];
        printf("HCN info : \n");
        printf("width : %d\n",[hcn width]);
        printf("height : %d\n",[hcn height]);
        printf("area : %d\n",[hcn area]);
        printf("perimeter : %d\n",[hcn peremeter]);
    
        printf("\n");
        
        NSLog(@"ex 6.4");
        
         Complex *temp = [[Complex alloc ] init];
        
        [temp setReal: 1];
        [temp setImaginary: 2];
        
        [so add: temp];
        [so print];
        [so sub: temp];
        [so print];
        [so mul : temp];
        [so print];
        [so div : temp];
        [so print];
        printf("\n");
        
    }
    return 0;
}
