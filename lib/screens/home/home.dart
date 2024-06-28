import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hieuductran/screens/home/widgets/home_data.dart';
import 'package:hieuductran/screens/home/widgets/home_delete.dart';

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
  List<Map<String, dynamic>> users = HomeData().users;
  // Create an instance of HomeDelete

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          Map<String, dynamic> user = users[index];
          return Slidable(
              endActionPane: ActionPane(
                motion: const DrawerMotion(),
                children: [
                  SlidableAction(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    icon: Icons.edit,
                    label: 'Edit',
                    onPressed: (context) {
                      edit(context, users, index);
                    },
                  ),
                  SlidableAction(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                    onPressed: (context) {
                      HomeDelete().delete(context, _delete, index);
                    },
                  )
                ],
              ),
              child: buildUserListTile(user));
        },
      ),
    );
  }

  void _delete(int index) {
    setState(() {
      users.removeAt(index);
    });
  }

  void edit(BuildContext context, List users, int index) {
    late String newName;
    late String newEmail;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit User'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(labelText: 'Name'),
                onChanged: (value) {
                  newName = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Email'),
                onChanged: (value) {
                  newEmail = value;
                },
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  users[index]['name'] = newName;
                  users[index]['email'] = newEmail;
                });
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  Widget buildUserListTile(Map<String, dynamic> user) => ListTile(
        onTap: () {
          Navigator.pushNamed(context, '/homeshowinfo',
              arguments: user['email']);
        },
        contentPadding: const EdgeInsets.all(5),
        title: Text(user['name']),
        subtitle: Text(user['email']),
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(user['logo']),
        ),
      );
}
