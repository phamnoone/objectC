//
//  AddBook.h
//  PII
//
//  Created by Thanh Pham on 11/5/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "AddCard.h"

@interface AddBook : NSObject

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

-(instancetype) initWithName: (NSString *) name;
-(void) addCard: (AddCard *) theCard;
-(NSUInteger) entries;
-(void) list;
-(AddCard *) lookup: (NSString *) theName;
-(void) removeCard: (AddCard *) theCard;
-(void) sort;
@end