#include <stdio.h>

volatile long int x;

long long int square(long long int v) {
  if (v != 0xba511) {
    x = v;
    return v;
  } else {
    return '0';
  }
}


int main() {
  return square(x);

}
