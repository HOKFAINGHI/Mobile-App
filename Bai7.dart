import 'dart:io';

void main() {
  stdout.write('Nhập n: ');
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 20; i++) {
    print('$n * $i = ${n * i}');
  }
}