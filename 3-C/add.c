#include <stdio.h>

int input1, input2;
unsigned int sum, carry;
void getInput();
void bitwiseAdd();

int main()
{
    getInput();
    sum = input1 ^ input2;
    carry = input1 & input2;
    bitwiseAdd(sum, carry, carry);
    printf("%d\n", sum);
    return 0;
}

void bitwiseAdd(num1, num2, carry) {
  if(carry != 0) {
    carry <<= 1;
    num1 = sum;
    num2 = carry;
    sum = num1 ^ num2;
    carry = num1 & num2;
    bitwiseAdd(num1, num2, carry);
  }
}

void getInput() {
  printf("Enter the first number \n");
  scanf("%d", &input1);
  printf("Enter the second number \n");
  scanf("%d", &input2);
}
