//
//  main.m
//  P5
//
//  Created by THANH on 11/3/15.
//  Copyright (c) 2015 THANH. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        // EX1
        for(int i =1; i<= 10 ; i++){
            for(int j =1 ;j <= 10 ; j++ ){
                printf("%2d ",j);
            }
            printf("\n");
        }
        
        //EX2
        for(int i =5;i <55; i=i+5){
            printf(" so tam giac : %5d\n",i*(i+1)/2);
        }
        //EX3 + 4
        for(int i = 1 ; i <= 10; i++){
            int temp =1;
            for(int j = 2 ;j <=i ;j++)
                temp*=j;
            printf("%3d! = %10d : ",i,temp);
            printf("%-3d! = %-10d\n",i,temp);
            
        }
        //EX8
        int val = 0,temp =0,tong = 0;
        NSLog(@"Nhap so nguyen : ");
        scanf("%d",&val);
               for(;;){
            temp = val /10;
            printf("%d ",(val - temp*10));
            tong += (val - temp*10);
            val =temp;
            if(temp == 0 ) break;
        }
        printf("tong la : %d\n",tong);
        
    }
    return 0;
}
