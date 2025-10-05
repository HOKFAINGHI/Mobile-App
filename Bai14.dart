import 'dart:io';

void main() {
  stdout.write('Nhập n: ');
  int n = int.parse(stdin.readLineSync()!);
  List<int> arr = [];
  for (int i = 0; i < n; i++) {
    stdout.write('Phần tử ${i+1}: ');
    arr.add(int.parse(stdin.readLineSync()!));
  }
  arr.sort((a, b) => b.compareTo(a)); // Sắp xếp giảm dần
  print('Mảng ngược: $arr');
}