//
//  main.m
//  Appliances
//
//  Created by 康梁 on 15/10/21.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Appliance *a = [[Appliance alloc] init];
        NSLog(@"a is %@",a);
        [a setProducName:@"Washing Maching"];
        [a setVoltage:240];
        NSLog(@"a is %@",a);
    }
    return 0;
}
