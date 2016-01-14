//
//  main.c
//  gradeInTheShade
//
//  Created by 康梁 on 15/10/23.
//  Copyright © 2015年 kl. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

float averageFloats(float *data, int dataCount) {
    float sum = 0.0;
    for (int i = 0; i < dataCount; i++) {
        sum = sum + data[i];
    }
    return sum / dataCount;
}

int main(int argc, const char * argv[]) {
    
    // 创建包含float数的数组
    // float *gradeBook = malloc(3 * sizeof(float));
    // float gradeBook[3];
    
    // gradeBook[0] = 60.2;
    // gradeBook[1] = 94.5;
    // gradeBook[2] = 81.1;
    
    float gradeBook[] = {60.2, 94.5, 81.1};
    
    // 计算平均数
    float average = averageFloats(gradeBook, 3);
    
    // 释放数组
    // free(gradeBook);
    // gradeBook = NULL;
    
    printf("Avarage = %.2f \n", average);
    
    return 0;
}
