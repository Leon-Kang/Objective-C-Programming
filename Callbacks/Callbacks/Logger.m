//
//  Logger.m
//  Callbacks
//
//  Created by 康梁 on 15/10/18.
//  Copyright © 2015年 kl. All rights reserved.
//

#import "Logger.h"

@implementation Logger

- (void)sayOuch:(NSTimer *)t {
    NSLog(@"Ouch!");
}

- (void)zoneChange:(NSNotification *)note {
    NSLog(@"The system time zone has changed!");
}

// 收到一定字节数的数据后会被调用
- (void)connection:(NSURLConnection *)connection didReceiveData:(nonnull NSData *)data
{
    NSLog(@"received %lu bytes",[data length]);
    
    // 如果NSMutableData对象还不存在，就创建它
    if (!incomingData) {
        incomingData = [[NSMutableData alloc] init];
    }
    
    [incomingData appendData:data];
}

// 最后一部分数据处理完毕后，会被调用
- (void)connectiionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:incomingData
                                             encoding:NSUTF8StringEncoding];
    incomingData = nil;
    NSLog(@"string has %lu characters",[string length]);
    
    // 如果需要输出获取的全部数据，则可以取消下面这行代码的注释
    NSLog(@"The whole string is %@",string);
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(nonnull NSError *)error
{
    NSLog(@"connection failed: %@",[error localizedDescription]);
    incomingData = nil;
}

@end
