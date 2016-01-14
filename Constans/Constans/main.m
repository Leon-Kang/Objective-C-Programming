//
//  main.m
//  Constans
//
//  Created by 康梁 on 15/10/17.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // \u表示Unicode字符
        NSLog(@"\u03c0 is %f",M_PI);
        NSLog(@"%d is larger",MAX(1, 2));
        
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:@"currency"];
        NSLog(@"Money is %@",currency);
    }
    return 0;
}
