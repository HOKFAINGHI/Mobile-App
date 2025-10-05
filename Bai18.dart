import 'dart:io';

void main() {
  stdout.write('Nhập chuỗi: ');
  String chuoi = stdin.readLineSync()!;
  RegExp regex = RegExp(r'\d');
  print(regex.hasMatch(chuoi) ? 'Có' : 'Không');
}