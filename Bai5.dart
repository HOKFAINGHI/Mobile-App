import 'dart:io';

void main() {
  stdout.write('Nhập mã số sinh viên - Bxxxxxxx : ');
  String ma = stdin.readLineSync()!;
  RegExp regex = RegExp(r'^B[1-9]{7}$');
  if (regex.hasMatch(ma)) {
    print('Đúng định dạng');
  } else {
    print('Sai định dạng');
  }
}