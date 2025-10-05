import 'dart:io';

void main() {
  stdout.write('Nhập n: ');
  int n = int.parse(stdin.readLineSync()!);
  List<int> arr = [];
  for (int i = 0; i < n; i++) {
    stdout.write('Phần tử ${i+1}: ');
    arr.add(int.parse(stdin.readLineSync()!));
  }
  print('Min: ${arr.reduce((a, b) => a < b ? a : b)}');
}