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
-(void) print{
    for(int i = 0 ;i < width ; i++)
        printf("-");
    printf("\n");
    for(int i = 0; i < height ; i++ ){
        printf("|");
        for(int j =1 ; j < width -1 ; j++)
            printf(" ");
        printf("|\n");
        
    }
    for(int i = 0 ;i < width ; i++)
        printf("-");
    printf("\n");
}

@end
