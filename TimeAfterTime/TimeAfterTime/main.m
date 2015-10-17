//
//  main.m
//  TimeAfterTime
//
//  Created by 康梁 on 15/10/11.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSLog(@ "The date is %@ ",now);
        double second = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.",second);
        NSDate *later = [now dateByAddingTimeInterval:10000];
        NSLog(@"In 10000 seconds it will be %@",later);
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        comps.year = 1969;
        comps.day = 30;
        comps.month = 4;
        comps.hour = 13;
        comps.minute = 10;
        comps.second = 0;
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        double d = [dateOfBirth timeIntervalSinceNow];
        NSLog(@"%f",d);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSDayCalendarUnit inUnit:NSMonthCalendarUnit forDate:now];
        NSLog(@"This is day %lu of the month",day);
        
        NSTimeZone *zone = [NSTimeZone systemTimeZone];
        NSLog(@"%@",zone);
    }
    return 0;
}
