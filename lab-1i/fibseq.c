#include <stdio.h>
#include <time.h>

extern int fibonacci(int x);

int main(int argc, char **argv)
{
  int number=0;
  int result=0;
	clock_t start, end;
  FILE *file = fopen("fib1i.txt", "a");

  scanf("%d",&number);
	start = clock();
  result = fibonacci(number);
	end = clock();  
  printf("The fibonacci sequence at %d is: %d\n", number, result);

  if(file){
	  double total_time = (double)(end - start) / CLOCKS_PER_SEC;
    fprintf(file, "%d\t%f\n", number, total_time);
    fclose(file);
  }   
}

