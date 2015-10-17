//
//  Person.m
//  BMITime
//
//  Created by 康梁 on 15/10/12.
//  Copyright © 2015年 kl. All rights reserved.
//

#import "Person.h"

@implementation Person

//- (void)setHeightInMeters:(float)h {
//    heightInMeters = h;
//}
//- (void)setWeightInKilos:(int)w {
//    weightInKilos = w;
//}
//
//- (float)getHeightInMeters {
//    return heightInMeters;
//}
//- (int)getWeightInKilos {
//    return weightInKilos;
//}

@synthesize heightInMeters, weightInKilos;

- (float)bodyMassIndex {
    return weightInKilos/(heightInMeters * heightInMeters);
}

@end
