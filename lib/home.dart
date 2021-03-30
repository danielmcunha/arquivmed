import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qrscan/qrscan.dart' as scanner;

import 'doctor.dart';
import 'hospital.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String qrCodeResult = "";

  final List<Widget> _children = [
    SafeArea(child: DoctorPage()),
    SafeArea(child: HospitalPage()),
    SafeArea(child: HospitalPage()),
    SafeArea(child: HospitalPage()),
  ];

  Future<void> _onItemTapped(int index) async {
    setState(() {
      if (index != 1) {
        _selectedIndex = index;
      }
    });

    if (index == 1) {
      String cameraScanResult = await scanner.scan();
    }
  }

  Widget _getDrawerOption(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: Theme.of(context).primaryColor,
        ),
        SizedBox(width: 20.0),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget _getDrawer() {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: double.infinity,
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            width: 100,
            image: AssetImage('assets/images/logo.png'),
          ),
          SizedBox(height: 10.0),
          Divider(color: Colors.black),
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                  'https://www.miraldental.com/wp-content/uploads/2018/12/doctor-img2.png',
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Wagner Assis",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Editar perfil",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 10.0),
                    ),
                  ],
                ),
              )
            ],
          ),
          Divider(color: Colors.black),
          SizedBox(height: 20.0),
          GestureDetector(
            onTap: () => {Navigator.pushNamed(context, '/profile/my-qrcode')},
            child: _getDrawerOption(FontAwesomeIcons.qrcode, "Meu QR Code"),
          ),
          SizedBox(height: 20.0),
          _getDrawerOption(Icons.qr_code_scanner_sharp, "Leitor de QR Code"),
          SizedBox(height: 20.0),
          _getDrawerOption(FontAwesomeIcons.stethoscope, "Cadastro de Médicos"),
          SizedBox(height: 20.0),
          _getDrawerOption(FontAwesomeIcons.qrcode, "Cadastros de Hospital"),
          SizedBox(height: 20.0),
          _getDrawerOption(FontAwesomeIcons.qrcode, "Meu QR Code"),
          SizedBox(height: 20.0),
          Divider(color: Colors.black),
          _getDrawerOption(FontAwesomeIcons.phoneAlt, "Contato Arquivmed"),
          SizedBox(height: 20.0),
          _getDrawerOption(FontAwesomeIcons.cloud, "Sobre Arquivmed"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _children[_selectedIndex]),
      appBar: AppBar(
        title: Text(
          'Bem-vindo',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: Drawer(
        child: _getDrawer(),
      ),
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
