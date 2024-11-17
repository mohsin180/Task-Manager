// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myflutter/constants/todoarr.dart';

class Item extends StatelessWidget {
  final Todo todu;
  const Item({super.key, required this.todu});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        onTap: () => {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: Icon(
          todu.isdone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.blue,
          size: 14,
        ),
        title: Text(
          todu.text!,
          style: TextStyle(
              fontSize: 13,
              color: Colors.black,
              decoration: todu.isdone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            icon: Icon(Icons.delete),
            color: Colors.white,
            iconSize: 15,
            onPressed: () => {},
          ),
        ),
      ),
    );
  }
}
