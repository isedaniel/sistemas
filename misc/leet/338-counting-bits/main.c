#include <stdlib.h>
#include <stdio.h>

/*
 * Given integer n, return array ans, length n+ 1, such that for each i
 * (0 <= i <= n) ans[i] is 1 in binary representation of i.
 *
 * Example
 * Input: n = 2
 * Output: [0, 1, 1]
 */

int* countBits(int n, int* returnSize) {
  int* ans = malloc(sizeof(int) * (n+1));
  if (ans == NULL) {
    *returnSize = 0;
  }
  *returnSize = n + 1;

  for (int i = 0; i < *returnSize; i++) {
    int count = 0;
    if ((1 << 0) & i) count++;
    if ((1 << 1) & i) count++;
    if ((1 << 2) & i) count++;
    if ((1 << 3) & i) count++;
    if ((1 << 4) & i) count++;
    ans[i] = count;
  }
  return ans;
}

int main(void) {
  int n = 2, returnSize = 0;
  int* ans = countBits(n, &returnSize);
  for (int i = 0; i < returnSize; i++) {
    printf("%d ", ans[i]);
  }
  printf("\n");
  return 0;
}
