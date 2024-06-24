import 'package:flutter/material.dart';

import '../../global/appbar_path.dart';

final List users = [
  {
    'name': 'Tran Duc Hieu',
    'email': 'tranduchieu@gmail.com',
    'logo': AppbarPath().imgEch,
  },
  {
    'name': 'Anh Hùng Xạ Điêu',
    'email': 'duongqua@gmail.com',
    'logo': AppbarPath().imgEch,
  },
  {
    'name': 'Hieu Cute Vai',
    'email': 'hieuratcute@hnue.com',
    'logo': AppbarPath().imgEch,
  },
  {
    'name': 'Trọng Đan Dở Hơi',
    'email': 'tranduchieu2202@gmail.com',
    'logo': AppbarPath().imgEch,
  },
  {
    'name': 'Nhìn Thấy Em Chưa',
    'email': 'aloalo@gmail.com',
    'logo': AppbarPath().imgEch,
  },
  {
    'name': 'Duyên Do Trời, Phận Do Trời ',
    'email': 'aloalo@gmail.com',
    'logo': AppbarPath().imgEch,
  },
  {
    'name': 'Như Anh Đã Thấy',
    'email': 'aloalo@gmail.com',
    'logo': AppbarPath().imgEch,
  },
  {
    'name': 'Anh Không Thấy Thì Thôi',
    'email': 'aloalo@gmail.com',
    'logo': AppbarPath().imgEch,
  },
  {
    'name': 'Chỉnh Logo Tròn',
    'email': 'aloalo@gmail.com',
    'logo': AppbarPath().imgEch,
  },
  {
    'name': 'Anh Không Thấy Thì Thôi',
    'email': 'aloalo@gmail.com',
    'logo': AppbarPath().imgEch,
  },
  {
    'name': 'Duyên Do Trời, Phận Do Trời ',
    'email': 'aloalo@gmail.com',
    'logo': AppbarPath().imgEch,
  },
  {
    'name': 'Như Anh Đã Thấy',
    'email': 'aloalo@gmail.com',
    'logo': AppbarPath().imgEch,
  },
  {
    'name': 'Anh Không Thấy Thì Thôi',
    'email': 'aloalo@gmail.com',
    'logo': AppbarPath().imgEch,
  },
  {
    'name': 'Chỉnh Logo Tròn',
    'email': 'aloalo@gmail.com',
    'logo': AppbarPath().imgEch,
  },
  {
    'name': 'Anh Không Thấy Thì Thôi',
    'email': 'aloalo@gmail.com',
    'logo': AppbarPath().imgEch,
  },
];

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileTabWidget();
  }
}

class ProfileTabWidget extends StatefulWidget {
  const ProfileTabWidget({super.key});

  @override
  State<ProfileTabWidget> createState() => _ProfileTabWidgetState();
}

class _ProfileTabWidgetState extends State<ProfileTabWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(width: 3),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: ListTile(
                  leading: ClipOval(
                    child: Image.asset(
                      user['logo'],
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(user['name']),
                  subtitle: Text(user['email']),
                  trailing: const Icon(Icons.more_vert),
                  )
                  );
        },
      ),
    );
  }
}
