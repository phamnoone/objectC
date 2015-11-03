//
//  main.m
//  ex2
//
//  Created by THANH on 10/28/15.
//  Copyright (c) 2015 THANH. All rights reserved.
//ß

#import <Foundation/Foundation.h>
#import "Laptop.h"

int main(){
    
    Laptop *mylap = [[Laptop alloc] init];
    
    [mylap start];
    [mylap sleep];
    [mylap logout];
    [mylap restart];
    [mylap shutdown];
    
    return 0;
}
