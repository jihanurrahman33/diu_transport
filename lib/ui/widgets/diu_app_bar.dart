import 'package:flutter/material.dart';

import '../utils/app_string.dart';

class DiuAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DiuAppBar({super.key,required this.onTapMenuIcon,required this.title});
  final void Function() onTapMenuIcon;
 final String title;


  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: onTapMenuIcon,
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          )),
      title: Text(
       title,
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.white,
            ))
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
