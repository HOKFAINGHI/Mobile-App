import 'dart:io';

void main() {
  List<String> masv = [];
  RegExp regex = RegExp(r'^B170[1-9]{4}$');
  for (int i = 0; i < 5; i++) {
    stdout.write('Nhập mã SV ${i+1}: ');
    masv.add(stdin.readLineSync()!);
  }
  bool allValid = masv.every((ma) => regex.hasMatch(ma));
  print(allValid ? 'Tất cả đúng định dạng' : 'Có mã sai định dạng');
}