import 'dart:io';

void main() {
  stdout.write("Nhập vào một số nguyên (0 - 9): ");
  int n = int.parse(stdin.readLineSync()!);

  String chu;
  switch (n) {
    case 0: chu = "Không"; break;
    case 1: chu = "Một"; break;
    case 2: chu = "Hai"; break;
    case 3: chu = "Ba"; break;
    case 4: chu = "Bốn"; break;
    case 5: chu = "Năm"; break;
    case 6: chu = "Sáu"; break;
    case 7: chu = "Bảy"; break;
    case 8: chu = "Tám"; break;
    case 9: chu = "Chín"; break;
    default: chu = "Ngoài phạm vi (0-9)";
  }

  print("Kết quả: $chu");
}
