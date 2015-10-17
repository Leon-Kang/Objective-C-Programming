//
//  main.m
//  DateList
//
//  Created by 康梁 on 15/10/12.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建NSDate对象
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24 * 60 * 60];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24 * 60 * 60];
        
        // 创建一个NSArray对象
        NSArray *dateList = [NSArray arrayWithObjects:now,tomorrow,yesterday,nil];
        
        // 包含的对象个数
        NSLog(@"There are %lu dates",[dateList count]);
        
        // 输出其中两个对象
        NSLog(@"The first date is %@",[dateList objectAtIndex:0]);
        NSLog(@"The third date is %@",[dateList objectAtIndex:2]);
        
        // 遍历
        NSUInteger dateCount = [dateList count];
        for (int i = 0; i < dateCount; i++) {
            NSLog(@"Here is a date: %@",[dateList objectAtIndex:i]);
        }
        
        // 快速枚举
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date : %@",d);
        }
        
        // 创建可变数组
        NSMutableArray *mutableDateList = [NSMutableArray array];
        
        // 加入对象
        [mutableDateList addObject:now];
        [mutableDateList addObject:tomorrow];
        
        // 加入对象到指定位置
        [mutableDateList insertObject:yesterday atIndex:0];
        
        // 移除一个对象
        [mutableDateList removeObjectAtIndex:0];
    }
    return 0;
}
