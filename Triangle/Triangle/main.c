//
//  main.c
//  Triangle
//
//  Created by 康梁 on 15/10/9.
//  Copyright © 2015年 kl. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float a ,float b){
    return (180 - a - b);
}

int main(int argc, const char * argv[]) {
    printf("The trird angle is %f \n", remainingAngle(60, 30));
    return 0;
}
