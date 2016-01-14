//
//  OwnedAppliance.m
//  Appliances
//
//  Created by 康梁 on 15/10/21.
//  Copyright © 2015年 kl. All rights reserved.
//

#import "OwnedAppliance.h"

@implementation OwnedAppliance

- (id)initWithProductName:(NSString *)pn
           firstOwnerName:(NSString *)n
{
    // 调用父类的初始化方法
    self = [super initWithProductName:pn];
    
    if (self) {
        // 创建NSMutableSet实例，用于保存拥有者的姓名
        ownerNames = [[NSMutableSet alloc] init];
    }
    
    // 返回指向新对象的指针
    return self;
    
}

- (void)addOwnerNameObject:(NSString *)n {
    [ownerNames addObject:n];
}

- (void)removeOwnerNameObject:(NSString *)n {
    [ownerNames removeObject:n];
}

- (id)initWithProductName:(NSString *)pn {
    return [self initWithProductName:pn firstOwnerName:nil];
}

@end
