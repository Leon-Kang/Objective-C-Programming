//
//  OwnedAppliance.h
//  Appliances
//
//  Created by 康梁 on 15/10/21.
//  Copyright © 2015年 kl. All rights reserved.
//

#import "Appliance.h"

@interface OwnedAppliance : Appliance
{
    NSMutableSet *ownerNames;
}
// 指定初始化方法
- (id)initWithProductName:(NSString *)pn
           firstOwnerName:(NSString *)n;

- (void)addOwnerNameObject:(NSString *)n;
- (void)removeOwnerNameObject:(NSString *)n;

@end
