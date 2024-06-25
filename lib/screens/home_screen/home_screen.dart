import 'package:flutter/material.dart';
import 'package:hieuductran/screens/feed/feed.dart';
import 'package:hieuductran/screens/home/home.dart';
import 'package:hieuductran/screens/home_screen/widgets/home_tab_bar.dart';
import 'package:hieuductran/screens/mbank/mbank.dart';
import 'package:hieuductran/screens/setting/setting.dart';
import 'package:hieuductran/widgets/duchieu_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  void changeTab(int index) {
    _tabController.animateTo(index);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: DuchieuAppBar(
          heightAppbar: 150,
          title: 'DucHieu',
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
          action: const [
            Icon(Icons.notifications),
            Icon(Icons.more_vert),
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              HomeTabBar(
                text: 'Home',
                icon: Icons.home,
              ),
              HomeTabBar(
                text: 'Feed',
                icon: Icons.list,
              ),
              HomeTabBar(
                text: 'Profile',
                icon: Icons.person,
              ),
              HomeTabBar(
                text: 'Setting',
                icon: Icons.settings,
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            const HomeTab(),
            const FeedTab(),
            Mbank(changeTab: changeTab),
            const Setting(),
          ],
        ),
      ),
    );
  }
}
