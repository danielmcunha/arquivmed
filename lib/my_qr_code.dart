import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyQrCodePage extends StatelessWidget {
  Widget _getBody(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: double.infinity,
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(
              'https://www.miraldental.com/wp-content/uploads/2018/12/doctor-img2.png',
            ),
          ),
          Text(
            "COMPARTILHAR AS\nMINHAS ATIVIDADES",
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(45.0),
            child: Card(
              color: Colors.white,
              child: Image(
                width: 200,
                image: AssetImage('assets/images/qr_code_placeholder.png'),
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () => {},
            child: Text(
              'Receber Atividade',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                BorderSide(
                  style: BorderStyle.solid,
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meu QR CODE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: _getBody(context),
    );
  }
}
