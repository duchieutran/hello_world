import 'package:flutter/material.dart';
import 'package:hieuductran/screens/home/widgets/home_data.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeData(),
      child: const HomeWidget(),
    );
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
    final homeDataProvider = Provider.of<HomeData>(context);

    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: homeDataProvider.users.length,
        itemBuilder: (context, index) {
          final user = homeDataProvider.users[index];
          return Slidable(
            key: ValueKey(user['email']),
            endActionPane: ActionPane(
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) {
                    // Sửa
                  },
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  icon: Icons.edit,
                  label: 'edit',
                  borderRadius: BorderRadius.circular(10),
                ),
                const SizedBox(
                  width: 10,
                ),
                SlidableAction(
                  onPressed: (context) => homeDataProvider.removeUser(index),
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'delete',
                  borderRadius: BorderRadius.circular(10),
                )
              ],
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
              onTap: () {
                Navigator.pushNamed(context, '/homeshowinfo',
                    arguments: user['email']);
              },
            ),
          );
        },
      ),
    );
  }
}
