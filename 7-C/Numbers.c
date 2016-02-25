//
//  Numbers.c
//  
//
//  Created by Kelsey Van haaster on 18/02/2016.
//
//

#include <stdio.h>
#include <stdlib.h>


int sumNumbers(int,int);

int main()
{
    int subsequentNumber = 0;
    int numx = 0;
    static int runningTotal = 0;
    
    printf("Here is a very ugly implementation of adding numbers without arithmitic. \nIt works for positive and negative whole numbers. \n \n ");
    
    printf("Please enter a number, hit return to continue, or any letter key to exit \n\n");
    // get a number check for ending condition using returned value from scanf()
    while((scanf("%d",&numx)==1))
    {
    
        
        //continue getting numbers until ending condition is true.
        subsequentNumber = numx;
        runningTotal = sumNumbers(runningTotal,subsequentNumber);
        printf("You entered : %d \n", numx);
        printf("The value of your running total is now :  %d.\n" ,runningTotal);
        printf("Enter another number or any letter key to exit \n \n" );
    }
    
    printf("That's not a whole number - exiting \n");
    printf("The sum of all your numbers is: %d \n", runningTotal);
    return 0;
    
}


int sumNumbers(int a, int b)
{
    if (b == 0)return a;
    return sumNumbers(a ^ b, (a & b) << 1);
}



