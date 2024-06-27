import 'package:flutter/material.dart';

class DuchieuAppBar extends StatelessWidget implements PreferredSize {
  const DuchieuAppBar(
      {super.key,
      this.centerTitle = true,
      this.showLeading = true,
      this.leading,
      required this.title,
      this.action,
      this.bottom,
      this.flexibleSpace,
      this.heightAppbar = kTextTabBarHeight});

  final bool centerTitle;
  final bool showLeading;
  final Widget? leading;
  final Widget? flexibleSpace;
  final String title;
  final List<Widget>? action;
  final PreferredSizeWidget? bottom;
  final double heightAppbar;
  @override
  Size get preferredSize => Size.fromHeight(heightAppbar);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      automaticallyImplyLeading: showLeading,
      leading: showLeading
          ? leading ??
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                color: Colors.white,
                iconSize: 24,
              )
          : null,
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.amber,
      actions: action,
      bottom: bottom,
      flexibleSpace: flexibleSpace,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      )),
    );
  }

  @override
  Widget get child => throw UnimplementedError();
}
