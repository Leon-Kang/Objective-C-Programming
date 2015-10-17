//
//  main.c
//  Number test
//
//  Created by 康梁 on 15/10/9.
//  Copyright © 2015年 kl. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i;
    
    for (i = 99; i > 0; i -= 3) {
        
        if (i % 5 == 0) {
            printf("Found not! \n");
            continue;
        }else{
            printf("%d \n",i);
        }
        
    }
    
    return 0;
}
