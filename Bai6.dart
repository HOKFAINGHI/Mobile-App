import 'dart:io';

void main() {
  stdout.write('Nhập n: ');
  int n = int.parse(stdin.readLineSync()!);
  int tong = 0;
  for (int i = 0; i <= n; i += 2) {
    tong += i;
  }
  print('Tổng số chẵn: $tong');
}
