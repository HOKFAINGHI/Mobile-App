import 'dart:io';

void main() {
  stdout.write('Nhập chuỗi: ');
  String chuoi = stdin.readLineSync()!;
  int dem = chuoi.split('').where((c) => c == 'a').length;
  print('Số lần a: $dem');
}