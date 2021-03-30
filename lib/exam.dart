import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExamPage extends StatelessWidget {
  Widget _getBody(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "08",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26.0,
                        color: Theme.of(context).primaryColor,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Icon(
                          FontAwesomeIcons.hospital,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Hospital Mãe de Deus",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Icon(
                          FontAwesomeIcons.stethoscope,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Dr. João Pedro Pereira",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        child: Icon(
                          FontAwesomeIcons.calendarAlt,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(
                          "23/02/2021 - 14:30",
                          style: TextStyle(fontSize: 10.0),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15.0, top: 15.0),
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () => {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => examDialog,
                        ),
                      },
                      child: Text(
                        'Ver meu exame',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                          BorderSide(
                            style: BorderStyle.solid,
                            color: Theme.of(context).primaryColor,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Exame 08',
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

Dialog examDialog = Dialog(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12.0),
  ), //this right here
  child: Container(
    height: 300.0,
    width: 300.0,
    child: Image(
      image: AssetImage('assets/images/exam.png'),
    ),
  ),
);
