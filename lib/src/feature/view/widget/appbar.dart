import 'package:flutter/material.dart';

AppBar appBarHome() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.blue,
    title: const Text(
      " Main page",
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
      ),
    ),
  );
}
