import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorPage extends StatelessWidget {
  // Full dimensions of an action
  static const double ActionWidgetSize = 60.0;

  // The size of the icon showen for Social Actions
  static const double ActionIconSize = 35.0;

  // The size of the share social icon
  static const double ShareActionIconSize = 25.0;

  // The size of the profile image in the follow Action
  static const double ProfileImageSize = 50.0;

  // The size of the plus icon under the profile image in follow action
  static const double PlusIconSize = 25.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Image(
              width: 158.64,
              height: 42.35,
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.0),
            width: 120.0,
            height: 120.0,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                    'https://www.miraldental.com/wp-content/uploads/2018/12/doctor-img2.png',
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 90,
                  child: Container(
                    width: PlusIconSize,
                    height: PlusIconSize,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            "Wagner Assis",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
          DefaultTabController(
            // The number of tabs / content sections to display.
            length: 4,
            child: Column(
              children: [
                TabBar(
                  isScrollable: true,
                  // labelPadding: EdgeInsets.only(left: 0, right: 0.0),
                  labelStyle:
                      TextStyle(fontFamily: 'Montserrat', fontSize: 12.0),
                  indicatorPadding: EdgeInsets.all(1.0),
                  tabs: [
                    Tab(text: "Exames"),
                    Tab(text: "Consultas"),
                    Tab(text: "Internações"),
                    Tab(text: "PA"),
                  ],
                ),
                Container(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Center(
                        child: Text("Últimos Exames"),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/doctor/exam-list');
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "08",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26.0,
                                        color: Theme.of(context).primaryColor),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
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
                                    ],
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: AlignmentDirectional.centerEnd,
                                      child: Icon(
                                        Icons.keyboard_arrow_right_sharp,
                                        color: Theme.of(context).primaryColor,
                                        size: 50,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "07",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26.0,
                                      color: Theme.of(context).primaryColor),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
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
                                            "Hospital Moinhos de Vento",
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
                                            "Dr. Márcio Gomes",
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
                                            "15/01/2021 - 10:20",
                                            style: TextStyle(fontSize: 10.0),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: AlignmentDirectional.centerEnd,
                                    child: Icon(
                                      Icons.keyboard_arrow_right_sharp,
                                      color: Theme.of(context).primaryColor,
                                      size: 50,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
    // );
  }
}
