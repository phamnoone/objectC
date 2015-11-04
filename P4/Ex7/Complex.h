//
//  Complex.h
//  Ex7
//
//  Created by Thanh Pham on 10/30/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject {
    double a;
    double b;
}
-(void) setReal : (double) x;
-(void) setImaginary : (double) x;
-(double) getReal;
-(double) getImaginary ;
-(void) print;
-(void) add :(Complex*) x;
-(void) sub :(Complex*) x;
-(void) mul :(Complex*) x;
-(void) div :(Complex*) x;
@end
