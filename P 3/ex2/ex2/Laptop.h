//
//  Laptop.h
//  ex2
//
//  Created by THANH on 10/28/15.
//  Copyright (c) 2015 THANH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Laptop : NSObject{
    NSString *name;
    int *weight;
}

// action
- (bool) start;
- (bool) sleep;
- (bool) shutdown;
- (bool) restart;
- (bool) logout;
@end
