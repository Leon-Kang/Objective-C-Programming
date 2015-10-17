//
//  Person.h
//  BMITime
//
//  Created by 康梁 on 15/10/12.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    // Person的实例变量
    float heightInMeters;
    int weightInKilos;
}

// 创建set方法使实例变量可赋值
// - (void)setHeightInMeters:(float)h;
// - (void)setWeightInKilos:(int)w;
// 创建get方法以访问实例变量
// - (float)getHeightInMeters;
// - (int)getWeightInKilos;

@property float heightInMeters;
@property int weightInKilos;

// 计算Body Mass Index
- (float)bodyMassIndex;

@end
