//
//  main.c
//  99瓶啤酒
//
//  Created by 康梁 on 15/10/9.
//  Copyright © 2015年 kl. All rights reserved.
//

#include <stdio.h>

void singTheSong(int numberOfBottles){
    if (numberOfBottles == 0) {
        printf("There are simply no more bottle of bear on the wall. \n");
    }else {
        printf("%d bottle of bear on the wall.%d bottle of bear. \n",numberOfBottles,numberOfBottles);
        int oneFewer = numberOfBottles - 1;
        printf("Take one down,pass it around, %d bottle of on the wall. \n",oneFewer);
        singTheSong(oneFewer);
        printf("Put a bottle in the recycling, %d empty bottles in the bin. \n",numberOfBottles);
    }
}

int main(int argc, const char * argv[]) {
    // insert code here...
    singTheSong(99);
    return 0;
}
