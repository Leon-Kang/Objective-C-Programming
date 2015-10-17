//
//  main.c
//  PBR
//
//  Created by 康梁 on 15/10/10.
//  Copyright © 2015年 kl. All rights reserved.
//

#include <stdio.h>
#include <math.h>

// 将迪卡坐标转变为极坐标
void cartesianToPolar(float x, float y, double *rPtr, double *thetaPtr)
{
    // 检查rPtr是否为NULL
    if (rPtr) {
        // 将radius保存在传入的地址上
        *rPtr = sqrt(x * x + y * y);
    }
    
    // thetaPtr是否为NULL
    if (!thetaPtr) {
        // 跳过函数的剩余代码
        return;
    }
    // 将radius存入传入函数的地址
    *rPtr = sqrt(x * x + y * y);
    
    // 计算theta
    float theta;
    if (x == 0) {
        if (y == 0) {
            theta = 0.0; // 代表未定义
        } else if (y > 0){
            theta = M_PI_2;
        } else {
            theta = -M_PI_2;
        }
    } else {
        theta = atan(y/x);
    }
    // 将theta存入传入函数的地址
    *thetaPtr = theta;
}

int main(int argc, const char * argv[]) {
    
    double pi = 3.14;
    double intergerPart, fractionPart;
    
    fractionPart = modf(pi, &intergerPart);
    
    printf("integerPart = %.0f, fractionPart = %.2f \n",intergerPart,fractionPart);
    
    double x = 3.0, y = 4.0;
    double radius, angle;
    cartesianToPolar(x, y, &radius, &angle);
    printf("(%.2f, %.2f) becomes (%.2f radians, %.2f) \n",x, y, radius , angle);
    
    return 0;
}
