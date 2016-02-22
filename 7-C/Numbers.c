//
//  Numbers.c
//  
//
//  Created by Kelsey Van haaster on 18/02/2016.
//
//

#include <stdio.h>
#include <stdlib.h>
//#include <string.h>

int getNumber();
int sumNumbers(int,int);

int main()
{
    int firstNumber = 0;
    int secondNumber = 0 ;
    int subsequentNumber = 0;
    static int sum = 0;
    static int runningTotal = 0;
    
    //Get the first two numbers
    if ((firstNumber = getNumber()) == 0)
        return 0;
    if ((secondNumber = getNumber())== 0)
        return 0;
    //add the first two numbers
    sum = sumNumbers(firstNumber,secondNumber);
    //put the result into running total
    runningTotal = sum;
    //get another number
    //check for ending condition
    while((subsequentNumber = getNumber())!= 0)
    {
        runningTotal = sumNumbers(subsequentNumber,runningTotal);
    }
    
    printf("The value of RunningTotal is : %d \n", runningTotal);
    
}

int getNumber()

{
    //Get a Number
    int numx = 1;
    printf("Please enter a number or any other key to exit \n");
    if (scanf("%d",&numx)!= 1)
    {
        printf("That's not a number - exiting \n");
        //numx = getNumber();
        return 0;
    }
    else
     return numx;
    
        
}


int sumNumbers(int a, int b)
{
    if (b == 0) return a;
    return sumNumbers(a ^ b, (a & b) << 1);
}



