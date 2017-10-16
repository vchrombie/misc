#include <stdio.h>
int isLucky(long );
int isCheck(long );

int c;
int main()
{
  long i;
  int w,q;
  for (i=1000000080; i<=9999999990; i+=90)
  {
    q=isCheck(i);
    if (q==1)
    {
      w=isLucky(i);
      if (w==1)
      {
        printf("%ld\n",i);
        printf("@%d",c);
      }
    }
  }
  printf("\n\nTotal: %d\n",c);
  return 0;
}

int isCheck(long i)
{
  long j,n;
  for (n=i,j=10; j>1; n/=10,j--)
  {
    if (n%j)
      break;
  }
  if (j==1)
  {
    c++;
    return 1;
  }
  else
  {
    return 0;
  }
}

int isLucky(long n)
{
	int arr[10];
	for (int i=0; i<10; i++)
		arr[i] = 0;
	while (n > 0)
	{
		int digit = n%10;
		if (arr[digit])
		return 0;
		arr[digit] = 1;
		n = n/10;
	}
	return 1;
}
