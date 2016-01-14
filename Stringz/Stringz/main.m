//
//  main.m
//  Stringz
//
//  Created by 康梁 on 15/10/17.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
#pragma mark NSSting写入文件
        NSMutableString *str = [[NSMutableString alloc] init];
        
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Aaron is cool!\n"];
        }
        
        // 创建一个指向NSError对象的指针，但是不创建相应的对象
        // 实际上，只有当发生错误时，才会由writeToFile创建相应的NSError对象
        NSError *error = nil;
        
        // 将NSError指针通过引用传入writeToFile:atomically:encording:error方法
        BOOL success = [str writeToFile:@"/Users/kl/Desktop/Objective-C编程/cool.txt"
              atomically:YES
                encoding:NSUTF8StringEncoding
                   error:&error];
        
        // 检查返回的布尔值，如果写入失败，就查询NSError对象并输出错误描述
        if (success) {
            NSLog(@"done writing /Users/kl/Desktop/Objective-C编程");
        }else {
            NSLog(@"writing /Users/kl/Desktop/Objective-C编程/cool.txt failed:%@",[error localizedDescription]);
        }
        
#pragma mark NSString读取文件
        NSError *error_1 = nil;
        
        NSString *str_1 = [[NSString alloc] initWithContentsOfFile:@"/Users/kl/Desktop/Objective-C编程/cool.txt" encoding:NSUTF8StringEncoding error:&error_1];
        
        if (!str_1) {
            NSLog(@"read failed: %@",[error_1 localizedDescription]);
        }else {
            NSLog(@"cool.txt looks like this: %@",str_1);
        }
        
        
    }
    return 0;
}
