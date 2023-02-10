import 'package:flutter/material.dart';

class Spalc extends StatefulWidget {
  const Spalc({Key? key}) : super(key: key);

  @override
  State<Spalc> createState() => _SpalcState();
}

class _SpalcState extends State<Spalc> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context, '2');
    },);
    return SafeArea(child: Scaffold(body: Center(child: FlutterLogo(size: 100,)),));
  }
}
