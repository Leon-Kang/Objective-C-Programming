//
//  main.c
//  BMICalc
//
//  Created by 康梁 on 15/10/10.
//  Copyright © 2015年 kl. All rights reserved.
//

#include <stdio.h>

// 声明Person结构
typedef struct {
    float heightInMeters;
    float weightInKilos;
}Person;

float bodyMassIndex(Person p){
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[]) {
    Person person;
    person.heightInMeters = 96;
    person.weightInKilos = 1.8;
    float bmi = bodyMassIndex(person);
    
    printf("person weighs %.2f kilograms \n", person.weightInKilos);
    printf("person heights %.2f meters tall \n",person.heightInMeters);
    
    printf("person has a BMI of %f \n",bmi);
    
    return 0;
}
