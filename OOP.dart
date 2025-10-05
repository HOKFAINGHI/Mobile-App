import 'dart:io';

// Lớp cha CanBo
class CanBo {
  String hoTen;
  int tuoi;
  String gioiTinh; // nam, nữ, khác
  String diaChi;

  CanBo(this.hoTen, this.tuoi, this.gioiTinh, this.diaChi);

  void hienThi() {
    print('Họ tên: $hoTen, Tuổi: $tuoi, Giới tính: $gioiTinh, Địa chỉ: $diaChi');
  }
}

// CongNhan kế thừa CanBo
class CongNhan extends CanBo {
  int bac; // 1-10

  CongNhan(String hoTen, int tuoi, String gioiTinh, String diaChi, this.bac)
      : super(hoTen, tuoi, gioiTinh, diaChi);

  @override
  void hienThi() {
    super.hienThi();
    print('Bậc: $bac');
  }
}

// KySu kế thừa CanBo
class KySu extends CanBo {
  String nganhDaoTao;

  KySu(String hoTen, int tuoi, String gioiTinh, String diaChi, this.nganhDaoTao)
      : super(hoTen, tuoi, gioiTinh, diaChi);

  @override
  void hienThi() {
    super.hienThi();
    print('Ngành đào tạo: $nganhDaoTao');
  }
}

// NhanVien kế thừa CanBo
class NhanVien extends CanBo {
  String congViec;

  NhanVien(String hoTen, int tuoi, String gioiTinh, String diaChi, this.congViec)
      : super(hoTen, tuoi, gioiTinh, diaChi);

  @override
  void hienThi() {
    super.hienThi();
    print('Công việc: $congViec');
  }
}

// QLCB quản lý
class QLCB {
  List<CanBo> danhSach = [];

  void themCanBo(CanBo cb) {
    danhSach.add(cb);
    print('Đã thêm cán bộ');
  }

  void timKiem(String hoTen) {
    var ketQua = danhSach.where((cb) => cb.hoTen.toLowerCase() == hoTen.toLowerCase());
    if (ketQua.isEmpty) {
      print('Không tìm thấy');
    } else {
      for (var cb in ketQua) {
        cb.hienThi();
      }
    }
  }

  void hienThiDanhSach() {
    if (danhSach.isEmpty) {
      print('Danh sách rỗng');
    } else {
      for (var cb in danhSach) {
        cb.hienThi();
        print('---');
      }
    }
  }
}

void main() {
  QLCB ql = QLCB();
  while (true) {
    print('1: Thêm cán bộ');
    print('2: Tìm kiếm theo họ tên');
    print('3: Hiển thị danh sách');
    print('4: Thoát');
    stdout.write('Chọn: ');
    int chon = int.parse(stdin.readLineSync()!);

    if (chon == 4) break;

    if (chon == 1) {
      stdout.write('Loại (1: Công nhân, 2: Kỹ sư, 3: Nhân viên): ');
      int loai = int.parse(stdin.readLineSync()!);
      stdout.write('Họ tên: ');
      String ten = stdin.readLineSync()!;
      stdout.write('Tuổi: ');
      int tuoi = int.parse(stdin.readLineSync()!);
      stdout.write('Giới tính (nam/nữ/khác): ');
      String gt = stdin.readLineSync()!;
      stdout.write('Địa chỉ: ');
      String dc = stdin.readLineSync()!;

      if (loai == 1) {
        stdout.write('Bậc (1-10): ');
        int bac = int.parse(stdin.readLineSync()!);
        ql.themCanBo(CongNhan(ten, tuoi, gt, dc, bac));
      } else if (loai == 2) {
        stdout.write('Ngành đào tạo: ');
        String nganh = stdin.readLineSync()!;
        ql.themCanBo(KySu(ten, tuoi, gt, dc, nganh));
      } else if (loai == 3) {
        stdout.write('Công việc: ');
        String cv = stdin.readLineSync()!;
        ql.themCanBo(NhanVien(ten, tuoi, gt, dc, cv));
      }
    } else if (chon == 2) {
      stdout.write('Nhập họ tên tìm: ');
      String ten = stdin.readLineSync()!;
      ql.timKiem(ten);
    } else if (chon == 3) {
      ql.hienThiDanhSach();
    }
  }
}