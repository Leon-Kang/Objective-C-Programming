//
//  Asset.m
//  BMITime
//
//  Created by 康梁 on 15/10/12.
//  Copyright © 2015年 kl. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset

@synthesize label, resaleValue, holder;

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>",[self label],[self resaleValue],[self holder]];
}

- (void)dealloc {
    NSLog(@"deallocatting %@",self);
}

@end
