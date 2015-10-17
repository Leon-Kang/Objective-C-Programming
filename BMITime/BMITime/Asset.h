//
//  Asset.h
//  BMITime
//
//  Created by 康梁 on 15/10/12.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Employee;

@interface Asset : NSObject
{
    NSString *label;
    __weak Employee *holder;
    unsigned int resaleValue;
}
@property (strong) NSString *label;
@property (weak) Employee *holder;
@property unsigned int resaleValue;

@end
