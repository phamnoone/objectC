//
//  AddCard.m
//  PII
//
//  Created by Thanh Pham on 11/5/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import "AddCard.h"

@implementation AddCard

@synthesize name, email;

-(void) setName: (NSString *) theName setEmail: (NSString *) theEmail {
    self.name = theName; self.email = theEmail;
}

-(void) print{
    NSLog (@"====================================");
    NSLog (@"|                                  |");
    NSLog (@"| %-31s  |", [name UTF8String]);
    NSLog (@"| %-31s  |", [email UTF8String]);
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"|        o               o         |");
    NSLog (@"|                                  |");
    NSLog (@"====================================");
}

-(NSComparisonResult) compareNames: (id) element {
    return [name compare: [element name]]; }
@end
