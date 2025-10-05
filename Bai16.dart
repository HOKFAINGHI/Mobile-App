import 'dart:io';

void main() {
  stdout.write('Nhập chuỗi: ');
  String chuoi = stdin.readLineSync()!;
  stdout.write('Nhập ký tự: ');
  String kt = stdin.readLineSync()!;
  print(chuoi.contains(kt) ? 'Có' : 'Không');
}