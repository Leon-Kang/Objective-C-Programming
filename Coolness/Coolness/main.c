//
//  main.c
//  Coolness
//
//  Created by 康梁 on 15/10/9.
//  Copyright © 2015年 kl. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // int i = 0;
    // while (i < 12) {
        // printf("%d.Aaron is cool \n",i);
        // i++;
    // }
    
    // for (int i = 0; i < 12; i++) {
        // printf("%d. Aaron is cool \n",i);
    // }
    int i;
    for (i = 0; i < 12; i++) {
        printf("Checking i = %d \n",i);
        if (i + 90 == i * i) {
            break;
        }
    }
    printf("The awser is %d. \n",i);
    
    
    return 0;
}
