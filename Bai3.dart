import 'dart:io';

class Bai3 {
  static void main() {
    // Nhập 3 cạnh
    stdout.write("Nhập cạnh a: ");
    double a = double.parse(stdin.readLineSync()!);

    stdout.write("Nhập cạnh b: ");
    double b = double.parse(stdin.readLineSync()!);

    stdout.write("Nhập cạnh c: ");
    double c = double.parse(stdin.readLineSync()!);

    // Điều kiện tạo thành tam giác: tổng 2 cạnh > cạnh còn lại
    if (a + b > c && a + c > b && b + c > a) {
      print("Ba số $a, $b, $c là 3 cạnh của một tam giác");
    } else {
      print("Ba số $a, $b, $c KHÔNG phải là 3 cạnh của một tam giác");
    }
  }
}

// Hàm main thật sự của Dart, gọi lại main() trong class
void main() {
  Bai3.main();
}
