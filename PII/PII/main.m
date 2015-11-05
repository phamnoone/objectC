//
//  main.m
//  PII
//
//  Created by Thanh Pham on 11/4/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddCard.h"
#import "AddBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

    
        // NUMBER Object
        NSNumber *number;
        number = @100;
        printf("%li\n", [number integerValue]);
        
        NSString *str = @"Hello Word";
        NSLog(@"%@",str);
        
        
        
        NSString *str1 = @"This is string A";
        NSString *str2 = @"This is string B";
        NSString *res;
        NSComparisonResult compareResult;
        
        // Count the number of characters
        NSLog (@"Length of str1: %lu", [str1 length]);
        
        // Copy one string to another
        res = [NSString stringWithString: str1];
        NSLog (@"copy: %@", res);
        
        // Copy one string to the end of another
        str2 = [str1 stringByAppendingString: str2];
        NSLog (@"Concatenation: %@", str2);
        
        // Test if two strings are equal
        if ([str1 isEqualToString: res] == YES) NSLog (@"str1 == res");
        else
            NSLog (@"str1 != res");
        
        // Test if one string is <, == or > than another
        compareResult = [str1 compare: str2];
        if (compareResult == NSOrderedAscending) NSLog (@"str1 < str2");
            else if (compareResult == NSOrderedSame) NSLog (@"str1 == str2");
        else
            // must be NSOrderedDescending NSLog (@"str1 > str2");
            // Convert a string to uppercase
            res = [str1 uppercaseString];
        NSLog (@"Uppercase conversion: %s", [res UTF8String]);
        
        //Convert a string to lowercase
        		        NSLog (@"Lowercase conversion: %@", res);
        NSLog (@"Original string: %@", str1);
        
        //////////////
        
        NSString *str3 = @"anc";
        NSLog(@"%@",[str3 substringToIndex:1]);
        /////////////////////////////////////////////
        
        NSArray *monthNames = @[@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December"];
        NSLog (@"Month Name"); NSLog (@"===== ====");
        for (int i = 0; i < 12; ++i)
            NSLog (@" %2i   %@", i + 1, [monthNames objectAtIndex: i]);
        //------------------------------------------------------------------------------------------------
        AddCard *card = [[AddCard alloc]init ];
        [card setName:@"Pham Thanh" setEmail:@"thanhph@gmail.com"];
        [card print];
        
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        AddCard *card1 = [[AddCard alloc] init];
        AddCard *card2 = [[AddCard alloc] init];
        AddCard *card3 = [[AddCard alloc] init];
        AddCard *card4 = [[AddCard alloc] init];
        
        AddBook *myBook = [[AddBook alloc] initWithName: @"Linda’s Address Book"];
        NSLog (@"Entries in address book after creation: %li", [myBook entries]);
        // Now set up four address cards
        [card1 setName: aName setEmail: aEmail];
        [card2 setName: bName setEmail: bEmail];
        [card3 setName: cName setEmail: cEmail];
        [card4 setName: dName setEmail: dEmail];
        // Add the cards to the address book
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        NSLog (@"Entries in address book after adding cards: %li", [myBook entries]);
        // List all the entries in the book now
        [myBook list];
        
        NSLog (@"Stephen Kochan");
        AddCard *myCard = [myBook lookup: @"stephen kochan"];
        if (myCard != nil) [myCard print];
        else
            NSLog (@"Not found!");
        // Try another lookup
        NSLog (@"Haibo Zhang");
        myCard = [myBook lookup: @"Haibo Zhang"];
        if (myCard != nil) [myCard print];
        else
            NSLog (@"Not found!");
        
        [myBook removeCard: card4];
        [myBook list];
        
        [myBook sort];
        [myBook list];
    }
    return 0;
}
