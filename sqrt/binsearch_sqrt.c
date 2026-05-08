/*  @requires 0 <= n < 92681
 *  @ensures r >= 0 && r*r <= n < (r+1)*(r+1)  */
__attribute__((noinline)) long long int Sqrt(long long int n) {
  long long int r = 0;
  long long int y = n + 1;
  while (y != r + 1) {
    // invariant r >= 0 && r*r <= n < y*y 
    //   && y >= r+1
    int h = (r + y) / 2;
    if (h * h <= n) {
      r = h;
    } else { y = h; }
  }
  return r;
}

int main(int argc, char**argv) {
  return Sqrt(argc);
}
