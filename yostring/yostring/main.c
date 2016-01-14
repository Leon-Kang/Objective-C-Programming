//
//  main.c
//  yostring
//
//  Created by 康梁 on 15/10/23.
//  Copyright © 2015年 kl. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, const char * argv[]) {
    
    char x = 0x21; // 字符"!"
    while (x <= 0x7e) {  // 字符"~"
        printf("%x is %c \n",x, x);
        x++;
    }
    
    // 获取指针，指向位于堆中的某块内存，该内存大小为五个字节
    // char *start = malloc(5);
    
    // 将'L'存入第一个字节
    // *start = 'L';
    // start[0] = 'L';
    
    // *(start + 1) = 'o';
    // start[1] = 'v';
    
    // *(start + 2) = 'v';
    // start[2] = 'v';
    
    // *(start + 3) = 'e';
    // start[3] = 'e';
    
    // *(start + 4) = '\n';
    // start[4] = '\n';
    
    //const说明其不可更改
    const char *start = "Love\n";
    
    // 输出字符串，以及所包含的字符个数
    printf("%s has %zu characters \n",start, strlen(start));
    
    // 输出第三个字符
    printf("The third letter is %c \n",*(start + 2));
    
    // 释放内存，使其可以被重用
    // 而使用string literal时，不需要为其分配和释放空间
    // free(start);
    // start = NULL;
    
    return 0;
}
