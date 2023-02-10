import 'package:exam1/home.dart';
import 'package:exam1/splas.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Spalc(),
        '2':(context) => Home(),
      },
    ),
  );
}