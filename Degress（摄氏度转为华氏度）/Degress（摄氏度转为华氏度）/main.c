//
//  main.c
//  Degress（摄氏度转为华氏度）
//
//  Created by 康梁 on 15/10/9.
//  Copyright © 2015年 kl. All rights reserved.
//

#include <stdio.h>

float fahrenheitFromCelsius(float cel){
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsius is %f Fahrenheit \n",cel,fahr);
    return fahr;
}

int main(int argc, const char * argv[]) {
    // insert code here...
    
    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit \n",freezeInF);
    
    return 0;
}
