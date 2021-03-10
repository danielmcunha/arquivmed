import 'package:arquivmed/home.dart';
import 'package:arquivmed/util/materialColor.dart';
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
        primarySwatch: createMaterialColor(Color(0xFF00d19b)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
