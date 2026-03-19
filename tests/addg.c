int main() {
  int n = 10;
  int a = 0;
  int b = 1;
  int next;

  while (n > 0) {
    next = a + b;
    a = b;
    b = next;
    n = n - 1;
  }

  return a;
}
