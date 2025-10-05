import 'dart:io';

bool isPrime(int num) {
  if (num <= 1) return false;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) return false;
  }
  return true;
}

void main() {
  stdout.write('Nhập n (<1000): ');
  int n = int.parse(stdin.readLineSync()!);
  print('Số nguyên tố:');
  for (int i = 2; i <= n; i++) {
    if (isPrime(i)) print(i);
  }
}
