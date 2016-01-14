//
//  main.m
//  ImageFetch
//
//  Created by 康梁 on 15/10/17.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *url = [NSURL URLWithString:@"http://www.google.com/hk/image/logos/ps_logo2.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        NSError *error = nil;
        
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:NULL
                                                         error:&error];
        
        if (!data) {
            NSLog(@"fetch failed: %@",[error localizedDescription]);
            return 1;
        }
        
        NSLog(@"The file is %lu bytes",[data length]);
        
        BOOL written = [data writeToFile:@"/user/kl/desktop/google.png"
                                 options:NSDataWritingAtomic
                                   error:&error];
        
        if (!written) {
            NSLog(@"write failed: %@",[error localizedDescription]);
            return 1;
        }
        
        NSLog(@"Success!");
        
        NSData *readData = [NSData dataWithContentsOfFile:@"/"];
        NSLog(@"The file read from the disk has %lu bytes",[readData length]);
    }
    return 0;
}
