//
//  main.m
//  Stockz
//
//  Created by 康梁 on 15/10/18.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *stock;
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"AAPL" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200] forKey:@"shares"];
        
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160] forKey:@"shares"];
        
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/Users/kl/Desktop/Objective-C编程/stocks.plist"
                 atomically:YES];
        
        NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/Users/kl/Desktop/Objective-C编程/stocks.plist"];
        
        for (NSDictionary *d in stockList) {
            NSLog(@"I have %@ shares of %@",[d objectForKey:@"shares"],[d objectForKey:@"symbol"]);
        }
    }
    return 0;
}
