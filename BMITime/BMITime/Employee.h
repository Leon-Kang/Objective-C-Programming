//
//  Employee.h
//  BMITime
//
//  Created by 康梁 on 15/10/12.
//  Copyright © 2015年 kl. All rights reserved.
//

#import "Person.h"

@class Asset;

@interface Employee : Person
{
    int employeeID;
    NSMutableArray *assets;
}
@property int employeeID;

- (void)addAssetsObject:(Asset *)a;
- (unsigned int)valueOfAssets;

@end
