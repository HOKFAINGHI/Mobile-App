import 'dart:io';

void main() {
  List<String> mas = [];
  RegExp regex = RegExp(r'^00[2-5]L[0-9]{4}$');
  for (int i = 0; i < 5; i++) {
    stdout.write('Nhập mã ${i+1}: ');
    mas.add(stdin.readLineSync()!);
  }
  bool hasInvalid = mas.any((ma) => !regex.hasMatch(ma));
  print(hasInvalid ? 'Sai rồi' : 'Đúng rồi');
}