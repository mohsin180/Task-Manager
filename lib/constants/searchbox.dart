// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Searchbox extends StatelessWidget {
  const Searchbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 200, 199, 209),
          borderRadius: BorderRadius.circular(20)),
      child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
                size: 15,
              ),
              prefixIconConstraints:
                  BoxConstraints(maxHeight: 20, minWidth: 25),
              border: InputBorder.none,
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.white))),
    );
  }
}
