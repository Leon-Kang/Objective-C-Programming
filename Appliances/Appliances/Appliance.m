//
//  Appliance.m
//  Appliances
//
//  Created by 康梁 on 15/10/21.
//  Copyright © 2015年 kl. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

@synthesize producName, voltage;

//- (id)init {
//    // 调用NSObject的init方法
//    self = [super init];
//
//    // 父类的init方法的返回值是否为nil？
//    if (self) {
//        // 为voltage赋值
//        [self setVoltage:120];
//    }
//
//    // 返回指向新对象的指针
//    return self;
//}

- (id)initWithProductName:(NSString *)pn {
    // 调用NSObject的init方法
    self = [super init];
    
    // 父类的init方法的返回值是否为nil？
    if (self) {
        // 为productName赋值
        [self setProducName:pn];
        // 为voltage赋值
        [self setVoltage:120];
    }
    
    // 返回指向新对象的指针
    return self;

}

- (id)init {
    return [self initWithProductName:@"Unknown"];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %d volts>",producName, voltage];
}

@end
