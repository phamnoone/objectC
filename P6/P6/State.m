//
//  State.m
//  P6
//
//  Created by Thanh Pham on 11/4/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import "State.h"

@implementation State

@synthesize number;

-(void) start:(double)num{
    number =num;
    printf("= %lf\n",number);
}

-(void) sum:(double)num{
    number+=num;
     printf("= %lf\n",number);
}

-(void)  sub:(double)num{
    number-=num;
    printf("= %lf\n",number);
}

-(void) mul:(double)num{
    number*=num;
    printf("= %lf\n",number);
}

-(void) div:(double)num{
    number/=num;
    printf("= %lf\n",number);
}

-(void) exit {
    printf("= %lf\n",number);
    exit(0);

}

@end
