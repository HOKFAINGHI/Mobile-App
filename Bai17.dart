import 'dart:io';

void main() {
  stdout.write('Nhập chuỗi: ');
  String chuoi = stdin.readLineSync()!;
  stdout.write('Nhập ký tự: ');
  String kt = stdin.readLineSync()!;
  int pos = chuoi.indexOf(kt);
  print(pos != -1 ? 'Vị trí: $pos' : 'Không tồn tại trong chuỗi');
}