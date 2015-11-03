//
//  Laptop.m
//  ex2
//
//  Created by THANH on 10/28/15.
//  Copyright (c) 2015 THANH. All rights reserved.
//

#import "Laptop.h"

@implementation Laptop


// action
- (bool) start {
    NSLog(@"My laptop startting ");
    return true;
}

- (bool) sleep {
    NSLog(@"Mylatop sleep" );
    return true;
}

- (bool) restart{
    NSLog(@"My laptop restarting");
    return true;
}

- (bool) shutdown {
    NSLog(@"My laptop shutdown");
    return true;
}

- (bool) logout {
    NSLog(@"My laptop logout ");
    return true;
}
@end
