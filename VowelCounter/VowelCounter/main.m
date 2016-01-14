//
//  main.m
//  VowelCounter
//
//  Created by 康梁 on 15/10/22.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+VowerCounting.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *string = @"Hello, World!";
        NSLog(@"%@ has %d vowels",string, [string vowelCount]);
    }
    return 0;
}
