//
//  Rectangle.h
//  Ex7
//
//  Created by Thanh Pham on 10/30/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject{
    int width;
    int height;
}

-(void) setWith :(int) w;
-(void) setHeigt:(int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) peremeter;
-(void) print;
@end
