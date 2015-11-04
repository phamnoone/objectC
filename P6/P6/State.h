//
//  State.h
//  P6
//
//  Created by Thanh Pham on 11/4/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cal.h"
@interface State : NSObject

@property double number;

- (void) start: (double) num;
- (void) sum  : (double) num;
- (void) sub  : (double) num;
- (void) mul  : (double) num;
- (void) div  : (double) num;
- (void) exit;
@end
