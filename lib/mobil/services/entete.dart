import 'package:flutter/material.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State createState() => _HomePageState();
}

class NativeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(size.width * 0.0836375, size.height * 0.0039400);
    path.quadraticBezierTo(size.width * 0.1142625, size.height * 0.0999000,
        size.width * 0.1568875, size.height * 0.1021200);
    path.cubicTo(
        size.width * 1.0093750,
        size.height * 0.2196000,
        size.width * 0.8691750,
        size.height * 1.0643000,
        size.width * 0.9987500,
        size.height * 0.9960000);
    path.quadraticBezierTo(size.width * 0.9987500, size.height * 0.7480000,
        size.width * 0.9987500, size.height * 0.0040000);
    path.lineTo(size.width * 0.0836375, size.height * 0.0039400);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
    );
  }
}

