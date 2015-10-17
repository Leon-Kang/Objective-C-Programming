//
//  main.m
//  BMITime
//
//  Created by 康梁 on 15/10/12.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建Person实例
        Person *person = [[Person alloc] init];
        
        // 为实例赋值
        [person setHeightInMeters:1.8];
        [person setWeightInKilos:96];
        
        // 调用方法bodyMassIndex
        float bmi = [person bodyMassIndex];
        NSLog(@"Person (%d,%f) has a BMI of %f",person.weightInKilos,person.heightInMeters,bmi);
        
        // 创建NSMutableArray对象，用来包含多个Employee对象
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        for (int i = 0; i < 10; i++) {
            // 创建Employee实例
            Employee *person = [[Employee alloc] init];
            
            // 为实例变量赋值
            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];
            
            // 将新创建的Employee实例加入NSMutableArray对象
            [employees addObject:person];
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        // 循环十次，创建10个Asset对象
        for (int i = 0; i < 10; i++) {
            // 创建Asset对象
            Asset *asset = [[Asset alloc] init];
            
            // 为Asset对象设置合适的标签
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d",i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i * 17];
            
            // 生成0至9之间的随机整数
            NSUInteger randomIndex = random() % [employees count];
            
            // 以随机数为牵引，取出相应的Employee对象
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // 将Asset对象赋值给该Employee对象
            [randomEmployee addAssetsObject:asset];
            
            [allAssets addObject:asset];
        }
        
        // 为employee排序输出
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *ei = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors:[NSArray arrayWithObjects:voa,ei,nil]];
        
        NSLog(@"Employee: %@", employees);
        
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"allAssets: %@",allAssets);
        
        // 过滤
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed:%@",toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up owner of array");
        
        employees = nil;
    }
    sleep(100);
    return 0;
}
