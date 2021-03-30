import 'package:arquivmed/exam.dart';
import 'package:arquivmed/home.dart';
import 'package:flutter/material.dart';

import 'my_qr_code.dart';

void main() {
  runApp(ArquivmedApp());
}

class ArquivmedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF00d19b, {
          50: Color(0xFF00d19b),
          100: Color(0xFF00d19b),
          200: Color(0xFF00d19b),
          300: Color(0xFF00d19b),
          400: Color(0xFF00d19b),
          500: Color(0xFF00d19b),
          600: Color(0xFF00d19b),
          700: Color(0xFF00d19b),
          800: Color(0xFF00d19b),
          900: Color(0xFF00d19b),
        }),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryIconTheme: IconThemeData(color: Colors.white),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.white),
          hintStyle: TextStyle(color: Colors.white),
        ),
        fontFamily: 'Montserrat',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/doctor/exam-list': (context) => ExamPage(),
        '/profile/my-qrcode': (context) => MyQrCodePage(),
      },
    );
  }
}
