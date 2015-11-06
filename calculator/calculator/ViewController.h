//
//  ViewController.h
//  calculator
//
//  Created by Thanh Pham on 11/6/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *display;

-(void) processDigit : (int) digit;
-(void) processOp : (char) theOp;
-(void) storeFracPart;

//key
-(IBAction) clickDigit:(UIButton * ) sender;

// phep toan
-(IBAction) clickPlus;
-(IBAction) clickMinus;
-(IBAction) clickMul;
-(IBAction) clickDiv;

// other
-(IBAction) clickOver;
-(IBAction) clickEquals;
-(IBAction) clickClear;

@end

