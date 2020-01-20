#include <stdio.h>

void printBinary(int num){
    int len = 4;
    int bit[8];
    int x;
    
    for(int i = 0; i < len; i++){
        x = 1 << i;
        x = num & x;
        bit[len-i-1] = x >> i;
    }
    for(int i = 0; i < len; i++){
        printf("%d", bit[i]);
    }
    printf("\n");
}


int main(void){
    int num1,num2,result;
    
    num1 = 0b0101;//5
    num2 = 0b1011;//11
    //処理①
    
    result = num1-num2;
    
    printf("binary: ");
    printBinary(result);
    printf("decimal: %d\n", result);
    
    return 0;
}
