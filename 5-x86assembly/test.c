#include <stdio.h>
#include <assert.h>

int add(int,int);

int main() {
  int sum;

  printf("add(1,2) should equal 3. ");
  sum = add(1,2);
  assert(sum == 3);
  printf("✓\n");
  
  printf("add(-5,-5) should equal 0. ");
  sum = add(-5, 5);
  assert(sum == 0);
  printf("✓\n");
  
  printf("add(-2, -4) should equal -6. ");
  sum = add(-2, -4);
  assert(sum == -6);
  printf("✓\n");
  
  printf("tests succeeded.");
  
  return 0;
}
