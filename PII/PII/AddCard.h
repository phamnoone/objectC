//
//  AddCard.h
//  PII
//
//  Created by Thanh Pham on 11/5/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddCard : NSObject

@property (copy, nonatomic) NSString *name, *email;
-(void) setName: (NSString *) theName setEmail: (NSString *) theEmail;
-(void) print;
-(NSComparisonResult) compareNames: (id) element;
@end
