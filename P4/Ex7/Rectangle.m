//
//  Rectangle.m
//  Ex7
//
//  Created by Thanh Pham on 10/30/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

-(void) setWith:(int)w{
    width =w;
}

-(void) setHeigt:(int)h {
    height = h;
}

-(int) width {
    return width;
}

-(int) height {
    return height;
}

-(int) area{
    return width*height;
}

-(int) peremeter{
    return 2*(width+height);
}

@end
