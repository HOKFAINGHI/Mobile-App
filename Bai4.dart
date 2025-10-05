import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Nhập 3 số thực (cách nhau space): ');
  List<double> canh = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  double a = canh[0], b = canh[1], c = canh[2];
  // Sắp xếp để c là cạnh lớn nhất
  List<double> sorted = [a, b, c]..sort();
  a = sorted[0]; b = sorted[1]; c = sorted[2];
  if (pow(a, 2) + pow(b, 2) == pow(c, 2)) {
    print('Là 3 cạnh của tam giác vuông');
  } else {
    print('Không phải 3 cạnh của tam giác vuông');
  }
}