// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:myflutter/constants/appbar.dart';
import 'package:myflutter/constants/searchbox.dart';
import 'package:myflutter/constants/todoarr.dart';
import 'package:myflutter/constants/todoitem.dart';

void main() {
  runApp(const Todolist());
}

final todolists = Todo.todoList();

class Todolist extends StatelessWidget {
  const Todolist({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: BuiltAppBar(),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                children: [
                  Searchbox(),
                  Expanded(
                    child: ListView(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "A L L T A S K S",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        for (Todo todoo in todolists)
                          Item(
                            todu: todoo,
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 200, 199, 209),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 10.0,
                              spreadRadius: 0.0,
                            )
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Add a new task",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 10, bottom: 20),
                      child: ElevatedButton(
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 40, color: Colors.blue),
                        ),
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            fixedSize: Size(70, 55),
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero)),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
