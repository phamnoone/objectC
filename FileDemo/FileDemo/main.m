//
//  main.m
//  FileDemo
//
//  Created by Thanh Pham on 11/6/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
   
    NSString *fileName = @"testfile.txt";
    NSFileManager *file;
    NSDictionary *data;
    
    file = [NSFileManager defaultManager];
    
    if([file fileExistsAtPath: fileName]==NO){
        NSLog(@"File mell ton tai");
        return 1;
    }
   
    if([file copyItemAtPath:file toPath: @"newfile" error:NULL] ==NO){
            NSLog(@"Copy loi");
            return 2;
        }
    
    // Now let's test to see if the two files are equal
    if ([file contentsEqualAtPath: fileName andPath: @"newfile"] == NO) {
        NSLog(@"Files are Not Equal!");
        return 3;
    }
    
    // Now let’s rename the copy
    if ([file moveItemAtPath: @"newfile" toPath: @"newfile2" error: NULL] == NO){
        NSLog(@"File rename Failed");
        return 4;
    }
    
    // get the size of the newfile2
    if ((data = [file attributesOfItemAtPath: @"newfile2" error: NULL]) == nil) {
        NSLog(@"Couldn't get file attributes!");
        return 5;
    }
    
    NSLog(@"File size is %llu bytes",
    [[data objectForKey: NSFileSize] unsignedLongLongValue]);
    
    // And finally, let's delete the original file
    if ([file removeItemAtPath: fileName error: NULL] == NO) {
        NSLog(@"file removal failed");
        return 6;
    }
    NSLog(@"All operations were successful");
    // Display the contents of the newly created file
    NSLog(@"%@", [NSString stringWithContentsOfFile:
    @"newfile2" encoding:NSUTF8StringEncoding error:NULL]);
    
    return 0;
}
