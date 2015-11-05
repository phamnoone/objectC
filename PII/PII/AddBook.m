
//
//  AddBook.m
//  PII
//
//  Created by Thanh Pham on 11/5/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import "AddBook.h"

@implementation AddBook

@synthesize bookName, book;

-(instancetype) initWithName: (NSString *) name{
    self = [super init];
    if (self) {
        bookName = [NSString stringWithString: name]; book = [NSMutableArray array];
    }
    return self;
}

-(void) addCard: (AddCard *) theCard{
    [book addObject: theCard];
}

-(instancetype) init {
    return [self initWithName:@"NoName"];
}

-(NSUInteger) entries{
    return [book count];
}

-(AddCard *) lookup: (NSString *) theName {
    for ( AddCard *nextCard in book )
        if ( [nextCard.name caseInsensitiveCompare: theName] == NSOrderedSame )
            return nextCard;
    return nil;
}

-(void) list{
    NSLog (@"======== Contentsof: %@ =========", bookName);
    
    for ( AddCard *theCard in book ){
        [theCard print];
    }
}

-(void) removeCard: (AddCard *) theCard{
    [book removeObjectIdenticalTo: theCard];
}



-(void) sort {
    [book sortUsingSelector: @selector(compareNames:)];
}


@end
