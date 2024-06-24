import 'package:flutter/material.dart';
import 'package:hieuductran/screens/feed/widgets/feed_data.dart';

class FeedTab extends StatelessWidget {
  const FeedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeedTabWidget();
  }
}

class FeedTabWidget extends StatefulWidget {
  const FeedTabWidget({super.key});

  @override
  State<FeedTabWidget> createState() => _FeedTabWidgetState();
}

class _FeedTabWidgetState extends State<FeedTabWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: FeedData().usersFeed.length,
        itemBuilder: (context, index) {
          final user = FeedData().usersFeed[index];
          return Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(width: 3)),
                borderRadius: BorderRadius.all(Radius.circular(10)),
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
              ));
        },
      ),
    );
  }
}
