import 'package:flutter/material.dart';
import '../../../global/appbar_path.dart';

class HomeData extends ChangeNotifier {
  List<Map<String, dynamic>> users = [
    {
      'name': 'Trần Đức Hiếu',
      'age': 20,
      'email': 'tranduchieu@gmail.com',
      'logo': AppbarPath().imgEch,
      'address': 'Nam Dinh',
    },
    {
      'name': 'Nguyễn Ngọc Trung',
      'age': 29,
      'email': 'trungnn@gmail.com',
      'logo': AppbarPath().imgCho,
      'address': 'Ha Noi',
    },
    {
      'name': 'Lê Tiến Đạt',
      'age': 29,
      'email': 'datle@gmail.com',
      'logo': AppbarPath().imgRua,
      'address': 'Ho Chi Minh',
    },
    {
      'name': 'Phạm Thị Hằng',
      'age': 25,
      'email': 'hangpham@gmail.com',
      'logo': AppbarPath().imgEch,
      'address': 'Đà Nẵng',
    },
    {
      'name': 'Nguyễn Văn Nam',
      'age': 32,
      'email': 'namnguyen@gmail.com',
      'logo': AppbarPath().imgCho,
      'address': 'Hải Phòng',
    },
    {
      'name': 'Trần Thị Mai',
      'age': 28,
      'email': 'maitran@gmail.com',
      'logo': AppbarPath().imgRua,
      'address': 'Hà Tĩnh',
    },
    {
      'name': 'Hoàng Văn Dương',
      'age': 30,
      'email': 'duonghoang@gmail.com',
      'logo': AppbarPath().imgEch,
      'address': 'Quảng Bình',
    },
    {
      'name': 'Vũ Thị Hương',
      'age': 26,
      'email': 'huongvu@gmail.com',
      'logo': AppbarPath().imgCho,
      'address': 'Ninh Bình',
    },
    {
      'name': 'Đặng Văn Tuấn',
      'age': 27,
      'email': 'tuandang@gmail.com',
      'logo': AppbarPath().imgRua,
      'address': 'Thanh Hóa',
    },
    {
      'name': 'Nguyễn Thị Lan',
      'age': 31,
      'email': 'lannguyen@gmail.com',
      'logo': AppbarPath().imgEch,
      'address': 'Bắc Giang',
    },
    {
      'name': 'Lê Văn Phúc',
      'age': 29,
      'email': 'phucle@gmail.com',
      'logo': AppbarPath().imgCho,
      'address': 'Bình Định',
    },
    {
      'name': 'Trương Văn Hùng',
      'age': 33,
      'email': 'hungtruong@gmail.com',
      'logo': AppbarPath().imgRua,
      'address': 'Thừa Thiên Huế',
    },
    {
      'name': 'Phan Thị Trang',
      'age': 24,
      'email': 'trangphan@gmail.com',
      'logo': AppbarPath().imgEch,
      'address': 'Cần Thơ',
    },
    {
      'name': 'Hoàng Văn Hải',
      'age': 28,
      'email': 'haihoang@gmail.com',
      'logo': AppbarPath().imgCho,
      'address': 'An Giang',
    },
    {
      'name': 'Đỗ Thị Thu',
      'age': 26,
      'email': 'thudo@gmail.com',
      'logo': AppbarPath().imgRua,
      'address': 'Vĩnh Long',
    },
    {
      'name': 'Mai Văn Quân',
      'age': 29,
      'email': 'quanmai@gmail.com',
      'logo': AppbarPath().imgEch,
      'address': 'Tiền Giang',
    },
    {
      'name': 'Lý Thị Thanh',
      'age': 30,
      'email': 'thanhly@gmail.com',
      'logo': AppbarPath().imgCho,
      'address': 'Long An',
    },
    {
      'name': 'Nguyễn Văn Đức',
      'age': 27,
      'email': 'ducnguyen@gmail.com',
      'logo': AppbarPath().imgRua,
      'address': 'Kiên Giang',
    },
    {
      'name': 'Trần Thị Ngọc',
      'age': 25,
      'email': 'ngoctran@gmail.com',
      'logo': AppbarPath().imgEch,
      'address': 'Sóc Trăng',
    },
    {
      'name': 'Phạm Văn An',
      'age': 26,
      'email': 'anpham@gmail.com',
      'logo': AppbarPath().imgCho,
      'address': 'Bạc Liêu',
    }
  ];

  List<Map<String, dynamic>> get user => users;

  void removeUser(int index) {
    users.removeAt(index);
    notifyListeners();
  }
}
