import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uts/screens/home_screen.dart';
import 'package:uts/screens/login_screen.dart';

class splash_screen extends StatefulWidget {
  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  startTimer() async {
    var durasi = Duration(seconds: 5);
    return Timer(
      durasi,
      () async {
        var box = Hive.box('userBox');
        bool? sudahLogin = box.get('Login');
        if (sudahLogin ?? false) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => home_screen()),
          );
        } else {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => login_screen()),
          );
        }
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Image.asset("assets/images/udb.jpg", height: 300, width: 300),
      )),
    );
  }
}
