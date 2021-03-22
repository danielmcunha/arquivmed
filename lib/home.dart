import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'doctor.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _children = [DoctorPage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _children[_selectedIndex]),
      appBar: AppBar(
        title: Text('Bem-vindo',
            style: TextStyle(color: Colors.white, fontSize: 16.0)),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: Drawer(),
      bottomNavigationBar: Container(
        height: 80.0,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Theme.of(context).primaryColor,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            unselectedFontSize: 12.0,
            selectedFontSize: 14.0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.qr_code_scanner),
                label: 'Compartilhar',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt_outlined),
                label: 'Ler',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.stethoscope),
                label: 'Médico',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.hospital),
                label: 'Hospital',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
