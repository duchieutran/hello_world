import 'package:flutter/material.dart';
import 'package:hieuductran/screens/profile/widgets/profile_data.dart';

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
        itemCount: ProfileData().users.hashCode,
        itemBuilder: (context, index) {
          final user = ProfileData().users[index];
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
