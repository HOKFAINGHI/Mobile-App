import 'dart:io';

void main() {
  stdout.write('Nhập chuỗi: ');
  String chuoi = stdin.readLineSync()!;
  RegExp regex = RegExp(r'^[A-Z][^ ]{0,18}[0-9]$');
  print(regex.hasMatch(chuoi) ? 'Duyệt!' : 'Không duyệt');
}