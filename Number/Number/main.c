//
//  main.c
//  Number
//
//  Created by 康梁 on 15/10/9.
//  Copyright © 2015年 kl. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    int x = 225;
    // 十进制
    printf("x is %d. \n ",x);
    // 八进制
    printf("In octal, x is %o \n",x);
    // 十六进制
    printf("In hexadecimal, x is %x \n",x);
    // 无符号十进制
    printf("x is %u.\n",x);
    
    printf("cos(1) = %.3f ; sin(1) = %.3f \n",cos(1),sin(1));
    
    return 0;
}
