import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HospitalPage extends StatefulWidget {
  @override
  _HospitalPageState createState() => _HospitalPageState();
}

class _HospitalPageState extends State<HospitalPage> {
  int _tabSelected = 1;
  List<Widget> _tabBody = [_NewHospital(), _HospitalList()];
  List<bool> _filterSelected = [false, true];
  List<Color> _textColors = [Colors.white, Color(0xFF075C45)];
  List<Color> _bgColors = [Color(0xFF075C45), Colors.white];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          ToggleButtons(
            children: <Widget>[
              Container(
                height: double.infinity,
                color: _bgColors[0],
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "Novo",
                  style: TextStyle(color: _textColors[0]),
                ),
              ),
              Container(
                height: double.infinity,
                color: _bgColors[1],
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "Cadastrados",
                  style: TextStyle(color: _textColors[1]),
                ),
              ),
            ],
            isSelected: _filterSelected,
            onPressed: (int index) {
              setState(() {
                for (var i = 0; i < _filterSelected.length; i++) {
                  if (i != index) {
                    _filterSelected[i] = false;
                    _textColors[i] = Colors.white;
                    _bgColors[i] = Color(0xFF075C45);
                  }
                }

                _filterSelected[index] = !_filterSelected[index];
                _textColors[index] = Color(0xFF075C45);
                _bgColors[index] = Colors.white;
                _tabSelected = index;
              });
            },
            selectedColor: Color(0xFF075C45),
            borderColor: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40.0),
            child: _tabBody[_tabSelected],
          )
        ],
      ),
    );
  }
}

class _HospitalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
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
                            FontAwesomeIcons.folder,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "CNPJ 88.625.686/0024-43",
                            style: TextStyle(fontSize: 12.0),
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
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
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
                            FontAwesomeIcons.folder,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "CNPJ 88.625.686/0024-43",
                            style: TextStyle(fontSize: 12.0),
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
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
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
                            FontAwesomeIcons.folder,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "CNPJ 88.625.686/0024-43",
                            style: TextStyle(fontSize: 12.0),
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
      ],
    );
  }
}

class _NewHospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Nome do hospital',
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white),
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'CNPJ',
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15.0, top: 15.0),
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () => {},
            child: Text(
              'Cadastrar',
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
          ),
        ),
      ],
    );
  }
}
