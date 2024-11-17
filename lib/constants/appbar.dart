// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class BuiltAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BuiltAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 200, 199, 209),
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Colors.black,
            size: 20,
          ),
          Container(
            height: 30,
            width: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset("images/Capture.jpg"),
            ),
          ),
        ],
      ),
    );
  }

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
