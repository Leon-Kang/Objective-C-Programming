//
//  Employee.m
//  BMITime
//
//  Created by 康梁 on 15/10/12.
//  Copyright © 2015年 kl. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeID;

- (void)addAssetsObject:(Asset *)a {
    // assets是否为nil
    if (!assets) {
        // 创建NSMutableArray
        assets = [[NSMutableSet alloc] init];
    }
    [assets addObject:a];
    [a setHolder:self];
}

- (unsigned int)valueOfAssets {
    // 累加物品的转售价值
    unsigned int sum = 0;
    for (Asset *a in assets) {
        sum += [a resaleValue];
    }
    return sum;
}

- (float)bodyMassIndex {
    float normalBMI = [super bodyMassIndex];
    return (0.9 * normalBMI);
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>",
            [self employeeID],[self valueOfAssets]];
}

- (void)dealloc {
    NSLog(@"deallocating %@",self);
}
@end
