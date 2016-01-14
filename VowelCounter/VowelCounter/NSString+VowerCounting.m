//
//  NSString+VowerCounting.m
//  VowelCounter
//
//  Created by 康梁 on 15/10/22.
//  Copyright © 2015年 kl. All rights reserved.
//

#import "NSString+VowerCounting.h"

@implementation NSString (VowerCounting)

- (int)vowelCount {
    NSCharacterSet *charSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiouyAEIOUY"];
    
    NSInteger count = [self length];
    int sum = 0;
    
    for (int i = 0; i < count; i++) {
        unichar c = [self characterAtIndex:i];
        if ([charSet characterIsMember:c]) {
            sum++;
        }
    }
    return sum;
}

@end
