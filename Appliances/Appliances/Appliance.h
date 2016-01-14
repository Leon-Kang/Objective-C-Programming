//
//  Appliance.h
//  Appliances
//
//  Created by 康梁 on 15/10/21.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject
{
    NSString *producName;
    int voltage;
}

@property (copy) NSString *producName;
@property int voltage;

// 指定初始化方法
- (id)initWithProductName:(NSString *)pn;

@end
