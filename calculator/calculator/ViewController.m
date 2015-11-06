//
//  ViewController.m
//  calculator
//
//  Created by Thanh Pham on 11/6/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"
@interface ViewController ()

@end

@implementation ViewController{
    char op;
    int currentNumber;
    BOOL firstOperand, isNumerator;
    Calculator *myCalculator;
    NSMutableString *displayString;
}

@synthesize display;

-(void) viewDidLoad {
    firstOperand = YES;
    isNumerator = YES;
    displayString = [NSMutableString stringWithCapacity :40];
    myCalculator = [[Calculator alloc ] init];
    
}

-(void) processDigit : (int) digit{
    currentNumber = currentNumber *10+digit;
    [displayString appendString : [NSString stringWithFormat : @"%i",digit]];
    display.text =displayString;
}
-(void) processOp : (char) theOp{
    NSString *opStr;
    op = theOp;
    switch (theOp) {
        case '+':
            opStr = @" + ";
        break;
        case '-':
            opStr = @" – ";
        break;
        case '*':
            opStr = @" × ";
        break;
        case '/':
            opStr = @" ÷ ";
        break;
    }
    [self storeFracPart];
    firstOperand = NO;
    isNumerator = YES;
    [displayString appendString: opStr];
    display.text = displayString;
}
-(void) storeFracPart{
    if (firstOperand) {
        if (isNumerator) {
            myCalculator.operand1.numerator = currentNumber;
            myCalculator.operand1.denominator = 1;
            }else
                myCalculator.operand1.denominator = currentNumber;
        }else if (isNumerator) {
            myCalculator.operand2.numerator = currentNumber;
            myCalculator.operand2.denominator = 1;
        }else {
                myCalculator.operand2.denominator = currentNumber;
                firstOperand = YES;
            }
            currentNumber = 0;
}
//key
-(IBAction) clickDigit:(UIButton * ) sender{
    int digit = sender.tag;
    [self processDigit: digit];
}

// phep toan
-(IBAction) clickPlus{
    [self processOp: '+'];
}
-(IBAction) clickMinus{
    [self processOp: '-'];
}
-(IBAction) clickMul{
    [self processOp: '*'];
}
-(IBAction) clickDiv{
    [self processOp: '/'];
}

// other
-(IBAction) clickOver{
    [self storeFracPart];
    isNumerator = NO;
    [displayString appendString: @"/"]; display.text = displayString;
    
}
-(IBAction) clickEquals{
    if ( firstOperand == NO ) {
        [self storeFracPart];
        [myCalculator performOperation: op];
        [displayString appendString: @" = "];
        [displayString appendString: [myCalculator.accumulator
                                      convertToString]]; display.text = displayString;
        currentNumber = 0;
        isNumerator = YES;
        firstOperand = YES; [displayString setString: @""];
    }
}
-(IBAction) clickClear{
    isNumerator = YES;
    firstOperand = YES;
    currentNumber = 0;
    [myCalculator clear];
    [displayString setString: @""];
    display.text = displayString;
}
@end
