import 'package:flutter/material.dart';

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
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Image(
                width: 158.64,
                height: 42.35,
                image: AssetImage('assets/images/logo.png')),
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
                    )),
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
                // Container(
                //   height: 100,
                //   child: TabBarView(
                //     children: [
                //       Icon(Icons.directions_car),
                //       Icon(Icons.directions_transit),
                //       Icon(Icons.directions_bike),
                //       Icon(Icons.directions_bike),
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ],
      ),
    );
    // );
  }
}
