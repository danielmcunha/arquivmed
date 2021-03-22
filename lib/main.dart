import 'package:arquivmed/home.dart';
import 'package:flutter/material.dart';

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
        fontFamily: 'Montserrat',
      ),
      home: HomePage(),
    );
  }
}
