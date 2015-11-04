//
//  oxy.h
//  Ex7
//
//  Created by Thanh Pham on 10/30/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface oxy : NSObject{
    int x;
    int y;
}

- (int) getX;
- (int) getY;
-(void) setXY : (int) a : (int) b;
- (void) setX: (int) a;
-(void) setY: (int)b;

@end
