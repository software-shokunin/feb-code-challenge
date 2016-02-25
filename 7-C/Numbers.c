//
//  Numbers.c
//  
//
//  Created by Kelsey Van haaster on 18/02/2016.
//
//

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
//#include <string.h>

int getNumber();
int sumNumbers(int,int);

int main()
{
    int firstNumber = 0;
    int subsequentNumber = 0;
    static int runningTotal = 0;
    
    printf("Here is a very ugly implementation of adding numbers without arithmitic. \n It works for positive and negative whole numbers. \n \n ");
    
    //Get the first number
    firstNumber = getNumber();
    printf("firstNumber =:%d\n", firstNumber);
    //add the first two numbers
    runningTotal = sumNumbers(firstNumber,runningTotal);
    //get another number
    //check for ending condition
    
    while((subsequentNumber = getNumber())!= 0)
    {
            runningTotal = sumNumbers(runningTotal,subsequentNumber);
            printf("The value of RunningTotal is : %d \n", runningTotal);
            printf("The value of subsequentNumber is : %d \n", subsequentNumber);
    }
    
    printf("The sum of all your numbers is: %d \n", runningTotal);
    
}

int getNumber()

{
    //Get a Number
    int numx = 1;
    printf("Please enter a number, or any other key to exit \n");
    if (scanf("%d",&numx)!=1)
    {
        printf("That's not a number - exiting \n");
        return 0;
    }
    else
        return numx;
    
}


int sumNumbers(int a, int b)
{
    
    printf("call to sumnumbers");
    printf("the value of a is = %d:\n", a);
    printf("the value of b is = %d:\n", b);
    if (b == 0)return a;
    return sumNumbers(a ^ b, (a & b) << 1);
    
    
}



