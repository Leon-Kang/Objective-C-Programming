//
//  main.m
//  bitewize
//
//  Created by 康梁 on 15/10/23.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        unsigned char a = 0x3c;
        unsigned char b = 0xa9;
        
        // 按位或
        unsigned char c = a | b;
        printf("Hex: %x | %x = %x\n",a, b, c);
        printf("Decimal: %d | %d = %d\n",a, b, c);
        
        // 按位与
        unsigned char d = a & b;
        printf("Hex: %x & %x = %x \n",a, b, d);
        printf("Decimal: %d & %d = %d \n",a, b, d);
        
        // 按位异或
        unsigned char e = a ^ b;
        printf("Hex: %x ^ %x = %x \n",a, b, e);
        printf("Decimal: %d ^ %d = %d \n",a, b, e);
        
        // 补位
        unsigned char f = ~b;
        printf("Hex: The complement of %x is %x \n",b, f);
        printf("Decimal: The complement of %d is %d \n",b, f);
        
        // 左位移
        unsigned char g = a << 2;
        printf("Hex: %x shifted left two places is %x \n",a, g);
        printf("Decimal: %d shifted left two places is %d \n",a, g);
        
        // 右位移
        unsigned char h = a >> 1;
        printf("Hex: %x shifted right one places is %x \n",a, h);
        printf("Decimal: %d shifted right one places is %d \n",a, h);
    }
    return 0;
}
