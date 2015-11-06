//
//  Calculator.h
//  calculator
//
//  Created by Thanh Pham on 11/6/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
@interface Calculator : NSObject

@property (strong, nonatomic) Fraction *operand1;
@property (strong, nonatomic) Fraction *operand2;
@property (strong, nonatomic) Fraction *accumulator;
-(Fraction *) performOperation: (char) op;
-(void) clear;

@end
