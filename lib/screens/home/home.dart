import 'package:flutter/material.dart';
import 'package:hieuductran/screens/home/widgets/home_data.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeWidget();
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
          itemCount: HomeData().users.length,
          itemBuilder: (context, index) {
            final user = HomeData().users[index];
            return ListTile(
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
              onTap: () {
                Navigator.pushNamed(context, '/homeshowinfo',
                    arguments: user['email']);
              },
            );
          }),
    );
  }
}
