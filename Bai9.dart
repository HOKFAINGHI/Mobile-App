import 'dart:io';

int fib(int n) {
  if (n == 0 || n == 1) return 1;
  int a = 1, b = 1;
  for (int i = 2; i <= n; i++) {
    int temp = a + b;
    a = b;
    b = temp;
  }
  return b;
}

void main() {
  stdout.write('Nhập n (<=20): ');
  int n = int.parse(stdin.readLineSync()!);
  print('Fib($n) = ${fib(n)}');
}